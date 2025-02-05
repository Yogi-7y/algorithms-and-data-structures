import 'package:algorithms_and_data_structures/search/substring_match_count.dart';
import 'package:test/test.dart';

void main() {
  test('', () async {
    const input = 'wowomgzomg';
    const search = 'omg';

    final result = subStringMatchCount(input, search);

    expect(result, 2);
  });
}
