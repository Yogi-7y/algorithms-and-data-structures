import 'package:algorithms_and_data_structures/sort/quick_sort.dart';
import 'package:test/test.dart';

void main() {
  test('quick sort', () {
    final _input = [3, 6, 2, 1, 5, 4, -1, 0, 10, 8, 7, 9, 9, -4, -8, 99];
    final _expected = [-8, -4, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 99];

    final result = quickSort(array: _input, left: 0, right: _input.length - 1);

    expect(result, _expected);
  });
}
