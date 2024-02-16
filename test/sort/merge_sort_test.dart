import 'package:algorithms_and_data_structures/sort/merge_sort.dart';
import 'package:test/test.dart';

void main() {
  test('merge sort', () {
    final _input = [10, 4, 2, 3];
    final _expected = [2, 3, 4, 10];
    final _result = mergeSort(_input);

    expect(_result, _expected);
  });
}
