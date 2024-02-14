/// Analyze if two strings are anagrams
/// Anagram: a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.
/// Example: "listen" and "silent" are anagrams
bool areAnagram({
  required String first,
  required String second,
}) {
  if (first.isEmpty && second.isEmpty) return true;

  final _firstFrequencyCounter = _createFrequencyCounter(first.split(''));
  final _secondFrequencyCounter = _createFrequencyCounter(second.split(''));

  if (_firstFrequencyCounter.length != _secondFrequencyCounter.length) return false;

  var _isAnagram = true;

  _firstFrequencyCounter.forEach((key, value) {
    final _secondFrequencyCounterValue = _secondFrequencyCounter[key];

    if (value != _secondFrequencyCounterValue) {
      _isAnagram = false;
      return;
    }
  });

  return _isAnagram;
}

Map<String, int> _createFrequencyCounter(List<String> array) {
  final _frequencyCounter = <String, int>{};
  array.forEach((element) {
    if (element.trim().isEmpty) return;

    if (_frequencyCounter.containsKey(element)) {
      _frequencyCounter[element] = _frequencyCounter[element]! + 1;
    } else {
      _frequencyCounter[element] = 1;
    }
  });

  return _frequencyCounter;
}
