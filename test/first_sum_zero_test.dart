import 'package:algorithms_and_data_structures/first_sum_zero.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return [-2, 2]',
    () {
      const _input = [-4, -3, -2, -1, 0, 1, 2, 7, 10];
      const _expectedResult = [-2, 2];

      final _result = firstSumZero(_input);
      expect(_result, _expectedResult);
    },
  );

  test('should return [-1, 1]', () {
    const _input = [-4, -3, -2, -1, 0, 1, 7, 10];
    const _expectedResult = [-1, 1];

    final _result = firstSumZero(_input);

    expect(_result, _expectedResult);
  });

  test(
    'should return empty when no match is found',
    () {
      const _input = [-4, -3, -2, -1, 0, 7, 10];
      const _expectedResult = <int>[];

      final _result = firstSumZero(_input);

      expect(_result, _expectedResult);
    },
  );
}
