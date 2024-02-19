import 'package:algorithms_and_data_structures/sort/radix_sort.dart';
import 'package:test/test.dart';

void main() {
  const _number = 12345;
  test('should return 5, if position is 0', () {
    expect(getDigitAt(_number, 0), 5);
  });

  test('should return 4, if position is 1', () {
    expect(getDigitAt(_number, 1), 4);
  });

  test('should return 3, if position is 2', () {
    expect(getDigitAt(_number, 2), 3);
  });

  test('should return 2, if position is 3', () {
    expect(getDigitAt(_number, 3), 2);
  });

  test('should return 1, if position is 4', () {
    expect(getDigitAt(_number, 4), 1);
  });

  test('should return 0, if position is 5', () {
    expect(getDigitAt(_number, 5), 0);
  });
}
