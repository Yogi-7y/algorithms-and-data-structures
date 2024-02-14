import 'package:algorithms_and_data_structures/anagram.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should return true, if empty',
    () {
      const _inputOne = '';
      const _inputTwo = '';

      final _result = areAnagram(
        first: _inputOne,
        second: _inputTwo,
      );

      expect(_result, isTrue);
    },
  );

  test('should return false, if input is `abc` and `abcd`', () {
    const _inputOne = 'abc';
    const _inputTwo = 'abcd';

    final _result = areAnagram(
      first: _inputOne,
      second: _inputTwo,
    );

    expect(_result, isFalse);
  });

  _successAnagrams.forEach(
    (element) => _anagramTest(value: element, matcher: isTrue),
  );

  _failureAnagrams.forEach((element) => _anagramTest(value: element, matcher: isFalse));
}

void _anagramTest({
  required ({String first, String second}) value,
  required Matcher matcher,
}) {
  return test(
    'should return true, if input is `${value.first}` and `${value.second}`',
    () {
      final _inputOne = value.first;
      final _inputTwo = value.second;

      final _result = areAnagram(
        first: _inputOne,
        second: _inputTwo,
      );

      expect(_result, matcher);
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
