import 'package:algorithms_and_data_structures/max_subarray_sum.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return 10',
    () {
      const _input = [1, 2, 5, 2, 8, 1, 5];
      const _number = 2;
      const _expectedResult = 10;

      final _result = maxSubArraySum(_input, _number);

      expect(_result, _expectedResult);
    },
  );

  test('should return 17', () {
    const _input = [1, 2, 5, 2, 8, 1, 5];
    const _number = 4;

    const _expectedResult = 17;

    final _result = maxSubArraySum(_input, _number);

    expect(_result, _expectedResult);
  });
}
