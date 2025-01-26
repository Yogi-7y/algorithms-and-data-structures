import 'package:algorithms_and_data_structures/max_subarray_sum.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return 10',
    () {
      const input = [1, 2, 5, 2, 8, 1, 5];
      const number = 2;
      const expectedResult = 10;

      final result = maxSubArraySum(input, number);

      expect(result, expectedResult);
    },
  );

  test('should return 17', () {
    const input = [1, 2, 5, 2, 8, 1, 5];
    const number = 4;

    const expectedResult = 17;

    final result = maxSubArraySum(input, number);

    expect(result, expectedResult);
  });
}
