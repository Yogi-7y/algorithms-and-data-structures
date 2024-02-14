import 'dart:math' as math;

/// Shifting window problem
/// Given an array of integers and a number, find out the maximum sum of
/// consecutive elements in the array.
/// Example: [1, 2, 5, 2, 8, 1, 5] and 2 => 10

int maxSubArraySum(List<int> array, int consecutiveNumber) {
  var _tempSum = 0;
  var _max = 0;

  final _initialList = array.sublist(0, consecutiveNumber);
  final _initialListSum = _initialList.reduce((value, element) => value + element);
  _max = _initialListSum;
  _tempSum = _max;

  for (var i = consecutiveNumber; i < array.length; i++) {
    _tempSum = _tempSum - array[i - consecutiveNumber] + array[i];
    _max = math.max(_tempSum, _max);
  }

  return _max;
}
