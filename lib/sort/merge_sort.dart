/// Merge sort is a combination of Splitting -> Sorting -> Merging.
/// Divide: Split the array into two halves recursively until there are individual elements.
/// Conquer: Each individual element is already sorted.
/// Merge: Combine the two sorted arrays by picking smallest elements from both.
///
/// Think of shuffling a deck of cards with a friend:
/// - You split the deck into 2 equal halves.
/// - Each person sorts their half.
/// - Then you both take turns placing the smallest card from your hand to create one sorted pile.
///
/// Time Complexity: O(n log n)
/// Space Complexity: O(n)
List<int> mergeSort(List<int> array) {
  if (array.length <= 1) return array;

  final mid = (array.length / 2).floor();
  final left = mergeSort(array.sublist(0, mid));
  final right = mergeSort(array.sublist(mid));

  return merge(left, right);
}

List<int> merge(List<int> arrayOne, List<int> arrayTwo) {
  final result = <int>[];

  /// [4, 6, 8] [1, 2, 5, 7]

  var i = 0;
  var j = 0;

  while (i < arrayOne.length && j < arrayTwo.length) {
    final iValue = arrayOne[i];
    final jValue = arrayTwo[j];

    if (iValue < jValue) {
      result.add(iValue);
      i = i + 1;
    } else {
      result.add(jValue);
      j = j + 1;
    }
  }

  while (i < arrayOne.length) {
    result.add(arrayOne[i]);
    i++;
  }

  while (j < arrayTwo.length) {
    result.add(arrayTwo[j]);
    j++;
  }
  return result;
}
