class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  final T value;
  Node<T>? next;

  void add(T value) => next = Node(value: value);

  @override
  String toString() => 'Node{value: $value, next: $next}';
}

class SinglyLinkedList<T> {
  SinglyLinkedList() {
    head = null;
    tail = null;
    length = 0;
  }

  Node<T>? head;
  Node<T>? tail;
  int length = 0;

  void push(T value) {
    final _node = Node(value: value);

    if (length == 0) {
      head = _node;
      tail = _node;
      length = 1;
      return;
    }

    tail?.add(value);
    tail = _node;
    length++;
  }

  void insert(T value) {
    final _node = Node(value: value);

    if (length == 0) {
      head = _node;
      tail = _node;
      length = 1;
      return;
    }

    head?.add(value);
    head = _node;
    length++;
  }
}
