import 'package:algorithms_and_data_structures/anagram.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return true, if empty',
    () {
      const inputOne = '';
      const inputTwo = '';

      final result = areAnagram(
        first: inputOne,
        second: inputTwo,
      );

      expect(result, isTrue);
    },
  );

  test('should return false, if input is `abc` and `abcd`', () {
    const inputOne = 'abc';
    const inputTwo = 'abcd';

    final result = areAnagram(
      first: inputOne,
      second: inputTwo,
    );

    expect(result, isFalse);
  });

  for (final element in _successAnagrams) {
    _anagramTest(value: element, matcher: isTrue);
  }

  for (final element in _failureAnagrams) {
    _anagramTest(value: element, matcher: isFalse);
  }
}

void _anagramTest({
  required ({String first, String second}) value,
  required Matcher matcher,
}) {
  return test(
    'should return true, if input is `${value.first}` and `${value.second}`',
    () {
      final inputOne = value.first;
      final inputTwo = value.second;

      final result = areAnagram(
        first: inputOne,
        second: inputTwo,
      );

      expect(result, matcher);
    },
  );
}

final _successAnagrams = [
  (
    first: 'listen',
    second: 'silent',
  ),
  (
    first: 'iceman',
    second: 'cinema',
  ),
  (
    first: 'debit card',
    second: 'bad credit',
  ),
  (
    first: 'dormitory',
    second: 'dirty room',
  ),
  (
    first: 'astronomer',
    second: 'moon starer',
  ),
];

final _failureAnagrams = [
  (
    first: 'cat',
    second: 'dog',
  ),
  (
    first: 'hello',
    second: 'world',
  ),
  (
    first: 'John Doe',
    second: 'Jane Doe',
  )
];
