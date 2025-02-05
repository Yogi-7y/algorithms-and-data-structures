import 'package:algorithms_and_data_structures/data_structures/singly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  test(
    'head and tail should be null when list is empty.',
    () {
      final singleLinkedList = SinglyLinkedList<int>();
      expect(singleLinkedList.head, isNull);
      expect(singleLinkedList.tail, isNull);
      expect(singleLinkedList.length, 0);
    },
  );

  test(
    'head and tail should be same when list has only one element.',
    () {
      final singleLinkedList = SinglyLinkedList<int>()..push(1);

      expect(singleLinkedList.head == singleLinkedList.tail, isTrue);
      expect(singleLinkedList.length, 1);
    },
  );

  test(
    'head and tail should be different when list have multiple nodes',
    () {
      final singleLinkedList = SinglyLinkedList<int>()
        ..push(1)
        ..push(2)
        ..push(3);

      expect(singleLinkedList.head != singleLinkedList.tail, isTrue);
      expect(singleLinkedList.length, 3);
      expect(singleLinkedList.head?.value, 1);
      expect(singleLinkedList.head?.next?.value, 2);
      expect(singleLinkedList.tail?.value, 3);
      expect(singleLinkedList.head?.next?.next, singleLinkedList.tail);
    },
  );

  test('pop', () {
    final singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..push(3);

    expect(singleLinkedList.head?.value, 1);
    expect(singleLinkedList.tail?.value, 3);

    expect(singleLinkedList.pop(), 3);
    expect(singleLinkedList.tail?.value, 2);

    expect(singleLinkedList.pop(), 2);
    expect(singleLinkedList.tail?.value, 1);

    expect(singleLinkedList.pop(), 1);
    expect(singleLinkedList.tail, isNull);
    expect(singleLinkedList.head, isNull);

    return null;
  });

  test('shift', () {
    final singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..push(3);

    expect(singleLinkedList.head?.value, 1);
    expect(singleLinkedList.tail?.value, 3);

    expect(singleLinkedList.shift(), 1);
    expect(singleLinkedList.head?.value, 2);
    expect(singleLinkedList.tail?.value, 3);

    expect(singleLinkedList.shift(), 2);
    expect(singleLinkedList.head?.value, 3);
    expect(singleLinkedList.tail?.value, 3);

    expect(singleLinkedList.shift(), 3);
    expect(singleLinkedList.head, isNull);
    expect(singleLinkedList.tail, isNull);
  });

  test(
    'unShift',
    () {
      final singleLinkedList = SinglyLinkedList<int>();

      expect(singleLinkedList.length, 0);
      expect(singleLinkedList.head, isNull);
      expect(singleLinkedList.tail, isNull);

      singleLinkedList.unShift(1);
      expect(singleLinkedList.length, 1);
      expect(singleLinkedList.head?.value, 1);
      expect(singleLinkedList.tail?.value, 1);

      singleLinkedList.unShift(2);
      expect(singleLinkedList.length, 2);
      expect(singleLinkedList.head?.value, 2);
      expect(singleLinkedList.tail?.value, 1);

      singleLinkedList.unShift(3);
      expect(singleLinkedList.length, 3);
      expect(singleLinkedList.head?.value, 3);
      expect(singleLinkedList.tail?.value, 1);
    },
  );

  test('get', () {
    final singleLinkedList = SinglyLinkedList<int>()
      ..push(1)
      ..push(2)
      ..push(3)
      ..push(4)
      ..push(5)
      ..push(6)
      ..push(7);

    expect(singleLinkedList.get(0), 1);
    expect(singleLinkedList.get(1), 2);
    expect(singleLinkedList.get(2), 3);
    expect(singleLinkedList.get(3), 4);
    expect(singleLinkedList.get(4), 5);
    expect(singleLinkedList.get(5), 6);
    expect(singleLinkedList.get(6), 7);
    expect(singleLinkedList.get(7), null);
    expect(singleLinkedList.get(-1), null);
  });

  test(
    'set',
    () {
      final singleLinkedList = SinglyLinkedList<int>()
        ..push(1)
        ..push(2)
        ..push(3)
        ..push(4);

      expect(singleLinkedList.set(2, 5), true);
      expect(singleLinkedList.get(2), 5);
      expect(singleLinkedList.set(4, 5), false);
      expect(singleLinkedList.set(-1, 5), false);
    },
  );

  test(
    'insert',
    () {
      final singleLinkedList = SinglyLinkedList<int>()
        ..push(1)
        ..push(2)
        ..push(3)
        ..push(4);

      expect(singleLinkedList.insert(2, 5), true);
      expect(singleLinkedList.get(2), 5);
      expect(singleLinkedList.get(3), 3);
      expect(singleLinkedList.get(4), 4);
      expect(singleLinkedList.length, 5);
    },
  );
}
