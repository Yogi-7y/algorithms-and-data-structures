import '../types.dart';

/// Sorting algorithm where the highest value bubbles up to the end.
/// Time complexity: O(n^2)
/// With the `noSwap` short-circuit, the best case is O(n)
///
/// If you've N items to sort, you'll have N-1 decisions, because the last one has no choice!
Numbers bubbleSort(Numbers array) {
  for (var i = 0; i < array.length - 1; i++) {
    var noSwap = false;

    for (var j = 0; j < array.length - i - 1; j++) {
      final current = array[j];
      final next = array[j + 1];

      if (current > next) {
        array[j] = next;
        array[j + 1] = current;
        noSwap = false;
      }
    }

    if (noSwap) break;
  }

  return array;
}
