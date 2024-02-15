import 'package:algorithms_and_data_structures/data_structures/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  test(
    'head and tail should be null when list is empty.',
    () {
      final _singleLinkedList = SinglyLinkedList<int>();
      expect(_singleLinkedList.head, isNull);
      expect(_singleLinkedList.tail, isNull);
      expect(_singleLinkedList.length, 0);
    },
  );

  test(
    'head and tail should be same when list has only one element.',
    () {
      final _singleLinkedList = SinglyLinkedList<int>()..push(1);

      expect(_singleLinkedList.head == _singleLinkedList.tail, isTrue);
      expect(_singleLinkedList.length, 1);
    },
  );

  test(
    'head and tail should be different when list have multiple nodes',
    () {
      final _singleLinkedList = SinglyLinkedList<int>()
        ..push(1)
        ..push(2);

      expect(_singleLinkedList.head != _singleLinkedList.tail, isTrue);
      expect(_singleLinkedList.length, 2);
    },
  );

  test('update head when inserting a new value', () {
    final _singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..insert(3);

    expect(_singleLinkedList.head?.value, 3);
    expect(_singleLinkedList.tail?.value, 2);
    expect(_singleLinkedList.length, 3);

    return null;
  });
}
