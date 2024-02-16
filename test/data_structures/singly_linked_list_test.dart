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
        ..push(2)
        ..push(3);

      expect(_singleLinkedList.head != _singleLinkedList.tail, isTrue);
      expect(_singleLinkedList.length, 3);
      expect(_singleLinkedList.head?.value, 1);
      expect(_singleLinkedList.head?.next?.value, 2);
      expect(_singleLinkedList.tail?.value, 3);
      expect(_singleLinkedList.head?.next?.next, _singleLinkedList.tail);
    },
  );

  test('pop', () {
    final _singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..push(3);

    expect(_singleLinkedList.head?.value, 1);
    expect(_singleLinkedList.tail?.value, 3);

    expect(_singleLinkedList.pop(), 3);
    expect(_singleLinkedList.tail?.value, 2);

    expect(_singleLinkedList.pop(), 2);
    expect(_singleLinkedList.tail?.value, 1);

    expect(_singleLinkedList.pop(), 1);
    expect(_singleLinkedList.tail, isNull);
    expect(_singleLinkedList.head, isNull);

    return null;
  });

  test('shift', () {
    final _singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..push(3);

    expect(_singleLinkedList.head?.value, 1);
    expect(_singleLinkedList.tail?.value, 3);

    expect(_singleLinkedList.shift(), 1);
    expect(_singleLinkedList.head?.value, 2);
    expect(_singleLinkedList.tail?.value, 3);

    expect(_singleLinkedList.shift(), 2);
    expect(_singleLinkedList.head?.value, 3);
    expect(_singleLinkedList.tail?.value, 3);

    expect(_singleLinkedList.shift(), 3);
    expect(_singleLinkedList.head, isNull);
    expect(_singleLinkedList.tail, isNull);
  });

  test(
    'unShift',
    () {
      final _singleLinkedList = SinglyLinkedList<int>();

      expect(_singleLinkedList.length, 0);
      expect(_singleLinkedList.head, isNull);
      expect(_singleLinkedList.tail, isNull);

      _singleLinkedList.unShift(1);
      expect(_singleLinkedList.length, 1);
      expect(_singleLinkedList.head?.value, 1);
      expect(_singleLinkedList.tail?.value, 1);

      _singleLinkedList.unShift(2);
      expect(_singleLinkedList.length, 2);
      expect(_singleLinkedList.head?.value, 2);
      expect(_singleLinkedList.tail?.value, 1);

      _singleLinkedList.unShift(3);
      expect(_singleLinkedList.length, 3);
      expect(_singleLinkedList.head?.value, 3);
      expect(_singleLinkedList.tail?.value, 1);
    },
  );

  test('get', () {
    final _singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..push(3)
      ..push(4)
      ..push(5)
      ..push(6)
      ..push(7);

    expect(_singleLinkedList.get(0), 1);
    expect(_singleLinkedList.get(1), 2);
    expect(_singleLinkedList.get(2), 3);
    expect(_singleLinkedList.get(3), 4);
    expect(_singleLinkedList.get(4), 5);
    expect(_singleLinkedList.get(5), 6);
    expect(_singleLinkedList.get(6), 7);
    expect(_singleLinkedList.get(7), null);
    expect(_singleLinkedList.get(-1), null);
  });

  test(
    'set',
    () {
      final _singleLinkedList = SinglyLinkedList<int>()
        ..push(1)
        ..push(2)
        ..push(3)
        ..push(4);

      expect(_singleLinkedList.set(2, 5), true);
      expect(_singleLinkedList.get(2), 5);
      expect(_singleLinkedList.set(4, 5), false);
      expect(_singleLinkedList.set(-1, 5), false);
    },
  );

  test(
    'insert',
    () {
      final _singleLinkedList = SinglyLinkedList<int>()
        ..push(1)
        ..push(2)
        ..push(3)
        ..push(4);

      expect(_singleLinkedList.insert(2, 5), true);
      expect(_singleLinkedList.get(2), 5);
      expect(_singleLinkedList.get(3), 3);
      expect(_singleLinkedList.get(4), 4);
      expect(_singleLinkedList.length, 5);
    },
  );
}
