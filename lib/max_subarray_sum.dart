import 'dart:math' as math;

/// Shifting window problem
/// Given an array of integers and a number, find out the maximum sum of
/// consecutive elements in the array.
/// Example: [1, 2, 5, 2, 8, 1, 5] and 2 => 10
int maxSubArraySum(List<int> array, int consecutiveNumber) {
  var tempSum = 0;
  var max = 0;

  final initialList = array.sublist(0, consecutiveNumber);
  final initialListSum = initialList.reduce((value, element) => value + element);
  max = initialListSum;
  tempSum = max;

  for (var i = consecutiveNumber; i < array.length; i++) {
    tempSum = tempSum - array[i - consecutiveNumber] + array[i];
    max = math.max(tempSum, max);
  }

  return max;
}
