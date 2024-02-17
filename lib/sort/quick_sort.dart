import '../types.dart';

Numbers quickSort({
  required Numbers array,
  required int left,
  required int right,
}) {
  if (left < right) {
    final pivotIndex = pivot(array: array, start: left, end: right);

    quickSort(array: array, left: left, right: pivotIndex - 1);

    quickSort(array: array, left: pivotIndex + 1, right: right);
  }
  return array;
}

int pivot({
  required Numbers array,
  required int start,
  required int end,
}) {
  final pivot = array[start];
  var swapIndex = start;

  for (var i = start; i < array.length; i++) {
    final currentValue = array[i];
    if (pivot > currentValue) {
      swapIndex++;
      final temp = array[swapIndex];
      array[swapIndex] = currentValue;
      array[i] = temp;
    }
  }

  array[start] = array[swapIndex];
  array[swapIndex] = pivot;

  return swapIndex;
}
