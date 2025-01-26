/// Similar to bubble sort, but instead of first placing large values into
/// sorted position, it places small values into sorted position.
/// Time complexity: O(n^2)
///
/// 1. Start with considering the 1st item as the smallest value.
/// 2. Compare it with other items in the array and if you find something smaller, store their index \
/// and them swap towards the end with the current index.
List<int> selectionSort(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    final currentValue = array[i];
    var minimumValueIndex = i;
    var minimumValue = array[minimumValueIndex];

    for (var j = i + 1; j < array.length; j++) {
      final currentValue = array[j];

      if (currentValue < minimumValue) {
        minimumValueIndex = j;
        minimumValue = array[minimumValueIndex];
      }
    }

    array[i] = minimumValue;
    array[minimumValueIndex] = currentValue;
  }

  return array;
}
