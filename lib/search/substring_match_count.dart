int subStringMatchCount(String value, String search) {
  // start index: 0
  // end index: 2 search.len - 1

  // initial substring = sublist(0, 3) -> wow
  // iterate
  // if found, increment.
  // if not found, increment start by +1

  for (var i = 0; i < value.length - search.length + 1; i++) {
    final _word = value.substring(i, i + search.length);
    print('word: ${_word}');
  }

  return 0;
}
