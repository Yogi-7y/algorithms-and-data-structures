import '../types.dart';

/// Similar to bubble sort, but instead of first placing large values into
/// sorted position, it places small values into sorted position.
/// Time complexity: O(n^2)
Numbers selectionSort(Numbers array) {
  for (var i = 0; i < array.length; i++) {
    var minItemIndex = i;
    for (var j = i + 1; j < array.length; j++) {
      final _currentValue = array[j];
      final _lowestValue = array[minItemIndex];

      if (_currentValue < _lowestValue) {
        minItemIndex = j;
      }
    }
    final temp = array[i];
    array[i] = array[minItemIndex];
    array[minItemIndex] = temp;
  }

  return array;
}
