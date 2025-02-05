// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meta/meta.dart';

@immutable
abstract class Comparable<T> {
  const Comparable(this.value);
  final T value;

  bool operator <(covariant T other);
  bool operator >(covariant T other);
}

class BinarySearchTree<T extends int> {
  BinarySearchTree({
    this.root,
  });

  Node<T>? root;

  void insert(T value) {
    final node = Node(value: value);

    if (root == null) {
      root = node;
      return;
    }

    var current = root;

    while (node.value < current!.value) {
      if (current.left == null) {
        current.left = node;
        return;
      }

      current = current.left;
    }

    while (node.value > current!.value) {
      if (current.right == null) {
        current.right = node;
        return;
      }

      current = current.right;
    }
  }

  bool contains(T value) {
    final node = Node(value: value);

    if (root == null) return false;

    var current = root;

    while (node.value <= current!.value) {
      if (current.value == node.value) return true;
      if (current.left == null) return false;
      current = current.left;
    }

    while (node.value >= current!.value) {
      if (current.value == node.value) return true;
      if (current.right == null) return false;
      current = current.right;
    }

    return false;
  }

  @override
  String toString() => 'BinarySearchTree(root: $root)';
}

class Node<T> {
  Node({
    required this.value,
    this.left,
    this.right,
  });

  final T value;
  Node<T>? left;
  Node<T>? right;

  @override
  String toString() => 'Node(value: $value, left: $left, right: $right)';
}
