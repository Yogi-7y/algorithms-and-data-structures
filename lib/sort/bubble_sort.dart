import '../types.dart';

/// Sorting algorithm where the highest value bubbles up to the end.
/// Time complexity: O(n^2)
/// With the `noSwap` short-circuit, the best case is O(n)
Numbers bubbleSort(Numbers array) {
  final _arrayCopy = array.toList();

  bool noSwap;

  for (var i = 0; i < _arrayCopy.length; i++) {
    noSwap = true;
    for (var j = 0; j < (_arrayCopy.length - i) - 1; j++) {
      final _current = _arrayCopy[j];
      final _next = _arrayCopy[j + 1];

      if (_current > _next) {
        _arrayCopy[j] = _next;
        _arrayCopy[j + 1] = _current;
        noSwap = false;
      }
    }

    if (noSwap) break;
  }

  return _arrayCopy;
}
