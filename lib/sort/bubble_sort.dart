/// Sorting algorithm where the highest value bubbles up to the end.
/// Time complexity: O(n^2)
/// With the `noSwap` short-circuit, the best case is O(n)
///
/// If you've N items to sort, you'll have N-1 decisions, because the last one has no choice!
List<int> bubbleSort(List<int> input) {
  for (var i = 0; i < input.length; i++) {
    var noSwap = true;
    for (var j = 0; j < input.length - 1; j++) {
      final current = input[j];
      final next = input[j + 1];

      if (current > next) {
        input[j] = next;
        input[j + 1] = current;
        noSwap = false;
      }
    }

    if (noSwap) break;
  }

  return input;
}
