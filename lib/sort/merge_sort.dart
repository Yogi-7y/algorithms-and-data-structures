import '../types.dart';

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
Numbers mergeSort(Numbers array) {
  if (array.length <= 1) return array;

  final mid = (array.length / 2).floor();
  final left = mergeSort(array.sublist(0, mid));
  final right = mergeSort(array.sublist(mid));

  return merge(left, right);
}

Numbers merge(Numbers arrayOne, Numbers arrayTwo) {
  final _result = <int>[];

  /// [4, 6, 8] [1, 2, 5, 7]

  var i = 0;
  var j = 0;

  while (i < arrayOne.length && j < arrayTwo.length) {
    final iValue = arrayOne[i];
    final jValue = arrayTwo[j];

    if (iValue < jValue) {
      _result.add(iValue);
      i = i + 1;
    } else {
      _result.add(jValue);
      j = j + 1;
    }
  }

  while (i < arrayOne.length) {
    _result.add(arrayOne[i]);
    i++;
  }

  while (j < arrayTwo.length) {
    _result.add(arrayTwo[j]);
    j++;
  }
  return _result;
}

void main() {
  final array = <int>[4, 10, 2, 6, 1, 3, 12, 2, 18, 3];

  final result = mergeSort(array);
  print(result);
}
