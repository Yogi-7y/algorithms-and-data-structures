import 'package:algorithms_and_data_structures/trees/binary_search_tree.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';

@immutable
class IntComparable implements Comparable<int> {
  const IntComparable(this.value);

  @override
  final int value;

  @override
  bool operator <(covariant int other) => value < other;

  @override
  bool operator >(covariant int other) => value > other;

  @override
  bool operator ==(covariant int other) => value == other;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'IntComparable(value: $value)';
}

void main() {
  test('root node', () {
    final binarySearchTree = BinarySearchTree<int>()..insert(10);

    expect(binarySearchTree.root!.value, 10);
  });

  test('adds to the left if number is smaller', () {
    final binarySearchTree = BinarySearchTree<int>()
      ..insert(10)
      ..insert(5);

    expect(binarySearchTree.root!.left!.value, 5);
  });

  test('adds to the right if number is greater', () {
    final binarySearchTree = BinarySearchTree<int>()
      ..insert(10)
      ..insert(15);

    expect(binarySearchTree.root!.right!.value, 15);
  });

  test('multi level test for left', () {
    final binarySearchTree = BinarySearchTree<int>()
      ..insert(10)
      ..insert(5)
      ..insert(3);

    expect(binarySearchTree.root!.left!.left!.value, 3);
  });

  test('multilevel test for right', () {
    final binarySearchTree = BinarySearchTree<int>()
      ..insert(10)
      ..insert(15)
      ..insert(20);

    expect(binarySearchTree.root!.right!.right!.value, 20);
  });

  test('return true if value is present', () {
    final binarySearchTree = BinarySearchTree<int>()
      ..insert(10)
      ..insert(15)
      ..insert(20)
      ..insert(5)
      ..insert(3);

    expect(binarySearchTree.contains(3), true);
  });

  test('return false if value is not present', () {
    final binarySearchTree = BinarySearchTree<int>()
      ..insert(10)
      ..insert(15)
      ..insert(20)
      ..insert(5)
      ..insert(3);

    expect(binarySearchTree.contains(30), false);
  });
}
