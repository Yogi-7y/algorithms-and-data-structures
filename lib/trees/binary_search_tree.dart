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
    final _node = Node(value: value);

    if (root == null) {
      root = _node;
      return;
    }

    var _current = root;

    while (_node.value < _current!.value) {
      if (_current.left == null) {
        _current.left = _node;
        return;
      }

      _current = _current.left;
    }

    while (_node.value > _current!.value) {
      if (_current.right == null) {
        _current.right = _node;
        return;
      }

      _current = _current.right;
    }
  }

  bool contains(T value) {
    final _node = Node(value: value);

    if (root == null) return false;

    var _current = root;

    while (_node.value <= _current!.value) {
      if (_current.value == _node.value) return true;
      if (_current.left == null) return false;
      _current = _current.left;
    }

    while (_node.value >= _current!.value) {
      if (_current.value == _node.value) return true;
      if (_current.right == null) return false;
      _current = _current.right;
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
