import 'package:algorithms_and_data_structures/search/binary_search.dart';
import 'package:test/test.dart';

const _array = [1, 2, 4, 9, 12, 15, 20, 26, 33, 45];

void main() {
  test('should return true, when searched for 4', () {
    const searchTerm = 4;

    final result = binarySearch(_array, searchTerm);

    expect(result, isTrue);
  });

  test('should return false, when searched for 8', () {
    const searchTerm = 8;

    final result = binarySearch(_array, searchTerm);

    expect(result, isFalse);
  });
}
