import '../types.dart';

/// Builds up the sort by gradually creating a larger left half which is always sorted.
/// You pick a number and insert it to its correct position.
///
/// Time Complexity
/// Worst Case: O(n^2)
///
/// Insertion sorts are useful when data is constantly coming in real-time one-by-one as we can insert the new element to its correct position rather than sorting the entire array. For example, real-time transaction processing where new orders are constantly coming in.
Numbers insertionSort(Numbers array) {
  for (var i = 1; i < array.length; i++) {
    final currentValue = array[i]; // 2
    var j = i - 1; // 1

    while (j >= 0 && currentValue < array[j]) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = currentValue;
  }

  return array;
}

void main() {
  final array = <int>[4, 9, 2, 40, 1];

  final result = insertionSort(array);

  print(result); // [1, 2, 4, 9, 40];
}
