import '../types.dart';

Numbers insertionSort(Numbers array) {
  for (var i = 0; i < array.length; i++) {
    final currentValue = array[i]; // 4
    var j = i - 1;

    while (j >= 0 && array[j] > currentValue) {
      array[j + 1] = array[j];
      j--;
    }

    array[j + 1] = currentValue;
  }

  return array;
}
