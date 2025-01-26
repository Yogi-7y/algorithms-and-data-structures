import 'package:algorithms_and_data_structures/sort/selection_sort.dart';
import 'package:test/test.dart';

final _input = [10, 4, 2, 3];

void main() {
  test('sort array using selection sort', () {
    final result = selectionSort(_input);
    final expected = [2, 3, 4, 10];
    expect(result, expected);
  });
}
