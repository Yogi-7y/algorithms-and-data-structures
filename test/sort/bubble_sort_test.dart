import 'package:algorithms_and_data_structures/sort/bubble_sort.dart';
import 'package:test/test.dart';

final _input = [1, 2, 5, 2, 8, 1, 5];

void main() {
  test(
    'should sort the array.',
    () async {
      final _expectedResult = [1, 1, 2, 2, 5, 5, 8];
      final _result = bubbleSort(_input);
      expect(_result, _expectedResult);
    },
  );

  test(
    'should short circuit and return sorted array',
    () {
      final _input = [9, 1, 2, 3, 4, 5];
      final _expectedResult = [1, 2, 3, 4, 5, 9];

      final _result = bubbleSort(_input);

      expect(_result, _expectedResult);
    },
  );
}
