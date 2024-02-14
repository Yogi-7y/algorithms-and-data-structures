/// Returns the first pair of numbers in the array that sum to 0.
/// Assumes the array is sorted.
/// Example: [-4, -3, -2, -1, 0, 1, 2, 3, 10] => [-2, 2]
List<int> firstSumZero(List<int> array) {
  var _leftPointer = 0;
  var _rightPointer = array.length - 1;

  while (_leftPointer < _rightPointer) {
    final _leftPointerValue = array[_leftPointer];
    final _rightPointerValue = array[_rightPointer];

    final _sum = _leftPointerValue + _rightPointerValue;

    if (_sum == 0) return [_leftPointerValue, _rightPointerValue];

    if (_sum < 0) {
      _leftPointer++;
    }

    if (_sum > 0) {
      _rightPointer--;
    }
  }

  return [];
}
