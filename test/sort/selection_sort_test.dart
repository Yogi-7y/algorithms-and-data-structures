import 'package:algorithms_and_data_structures/sort/selection_sort.dart';
import 'package:test/test.dart';

final _input = [10, 4, 2, 3];

void main() {
  test('sort array using selection sort', () {
    final _result = selectionSort(_input);
    final _expected = [2, 3, 4, 10];
    expect(_result, _expected);
  });
}
