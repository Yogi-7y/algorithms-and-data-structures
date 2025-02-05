// Incomplete

int subStringMatchCount(String value, String search) {
  for (var i = 0; i < value.length - search.length + 1; i++) {
    value.substring(i, i + search.length);
  }

  return 0;
}
