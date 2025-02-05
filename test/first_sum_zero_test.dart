import 'package:algorithms_and_data_structures/first_sum_zero.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return [-2, 2]',
    () {
      const input = [-4, -3, -2, -1, 0, 1, 2, 7, 10];
      const expectedResult = [-2, 2];

      final result = firstSumZero(input);
      expect(result, expectedResult);
    },
  );

  test('should return [-1, 1]', () {
    const input = [-4, -3, -2, -1, 0, 1, 7, 10];
    const expectedResult = [-1, 1];

    final result = firstSumZero(input);

    expect(result, expectedResult);
  });

  test(
    'should return empty when no match is found',
    () {
      const input = [-4, -3, -2, -1, 0, 7, 10];
      const expectedResult = <int>[];

      final result = firstSumZero(input);

      expect(result, expectedResult);
    },
  );
}
