import 'package:algorithms_and_data_structures/sort/bubble_sort.dart';
import 'package:test/test.dart';

final _input = [1, 2, 5, 2, 8, 1, 5];

void main() {
  test(
    'should sort the array.',
    () async {
      final expectedResult = [1, 1, 2, 2, 5, 5, 8];
      final result = bubbleSort(_input);
      expect(result, expectedResult);
    },
  );

  test(
    'should short circuit and return sorted array',
    () {
      final input = [9, 1, 2, 3, 4, 5];
      final expectedResult = [1, 2, 3, 4, 5, 9];

      final result = bubbleSort(input);

      expect(result, expectedResult);
    },
  );
}
