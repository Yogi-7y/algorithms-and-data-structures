class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  final T value;
  Node<T>? next;

  void addNode(Node<T> node) => next = node;

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

    tail?.addNode(_node);
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

    head?.addNode(_node);
    head = _node;
    length++;
  }

  T? pop() {
    if (length == 0) return null;

    var current = head;
    var previous = current;

    while (current?.next != null) {
      previous = current;
      current = current?.next;
    }

    tail = previous;
    tail?.next = null;
    length--;

    if (length == 0) {
      head = null;
      tail = null;
    }

    return current?.value;
  }

  T shift() {
    throw UnimplementedError();
  }
}
