/// Analyze if two strings are anagrams
/// Anagram: a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.
/// Example: "listen" and "silent" are anagrams
bool areAnagram({
  required String first,
  required String second,
}) {
  if (first.isEmpty && second.isEmpty) return true;

  final firstFrequencyCounter = _createFrequencyCounter(first.split(''));
  final secondFrequencyCounter = _createFrequencyCounter(second.split(''));

  if (firstFrequencyCounter.length != secondFrequencyCounter.length) return false;

  var isAnagram = true;

  firstFrequencyCounter.forEach((key, value) {
    final secondFrequencyCounterValue = secondFrequencyCounter[key];

    if (value != secondFrequencyCounterValue) {
      isAnagram = false;
      return;
    }
  });

  return isAnagram;
}

Map<String, int> _createFrequencyCounter(List<String> array) {
  final frequencyCounter = <String, int>{};
  for (final element in array) {
    if (element.trim().isEmpty) continue;

    if (frequencyCounter.containsKey(element)) {
      frequencyCounter[element] = frequencyCounter[element]! + 1;
    } else {
      frequencyCounter[element] = 1;
    }
  }

  return frequencyCounter;
}
