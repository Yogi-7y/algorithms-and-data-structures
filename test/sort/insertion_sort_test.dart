import 'package:algorithms_and_data_structures/sort/insertion_sort.dart';
import 'package:test/test.dart';

final _input = [10, 4, 2, 3];

void main() {
  test('insertion sort', () {
    final result = insertionSort(_input);

    final expected = [2, 3, 4, 10];

    expect(result, expected);
  });
}
