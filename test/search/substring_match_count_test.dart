import 'package:algorithms_and_data_structures/search/substring_match_count.dart';
import 'package:test/test.dart';

void main() {
  test('', () async {
    const _input = 'wowomgzomg';
    const _search = 'omg';

    final _result = subStringMatchCount(_input, _search);

    expect(_result, 2);
  });
}
