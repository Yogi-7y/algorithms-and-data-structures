import 'package:algorithms_and_data_structures/sort/merge_sort.dart';
import 'package:test/test.dart';

void main() {
  test('merge sort', () {
    final input = [10, 4, 2, 3];
    final expected = [2, 3, 4, 10];
    final result = mergeSort(input);

    expect(result, expected);
  });
}
