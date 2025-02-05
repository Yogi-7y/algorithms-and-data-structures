/// Returns the first pair of numbers in the array that sum to 0.
/// Assumes the array is sorted.
/// Example: [-4, -3, -2, -1, 0, 1, 2, 10] => [-2, 2]
List<int> firstSumZero(List<int> input) {
  var leftPointer = 0;
  var rightPointer = input.length - 1;

  while (leftPointer < rightPointer) {
    final leftPointerValue = input[leftPointer];
    final rightPointerValue = input[rightPointer];

    final sum = leftPointerValue + rightPointerValue;

    if (sum == 0) return [leftPointerValue, rightPointerValue];

    if (sum < 0) leftPointer++;
    if (sum > 0) rightPointer--;
  }

  return [];
}
