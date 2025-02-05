class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  T value;
  Node<T>? next;

  // ignore: use_setters_to_change_properties
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
    final node = Node(value: value);

    if (length == 0) {
      head = node;
      tail = node;
      length = 1;
      return;
    }

    tail?.addNode(node);
    tail = node;
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

  /// Removes from the start of the list.
  T? shift() {
    if (length == 0) return null;

    final newHead = head?.next;
    final removedNode = head;
    head = newHead;
    length--;

    if (length == 0) {
      head = null;
      tail = null;
    }

    return removedNode?.value;
  }

  /// Adds element to the start of the list
  void unShift(T value) {
    final node = Node(value: value);

    if (length == 0) {
      head = node;
      tail = node;
      length++;
      return;
    }

    node.addNode(head!);
    head = node;
    length++;
  }

  /// Returns the node at the given index
  T? get(int index) => _getNode(index)?.value;

  bool set(int index, T value) {
    final node = _getNode(index);
    if (node == null) return false;

    node.value = value;
    return true;
  }

  Node<T>? _getNode(int index) {
    if (index < 0) return null;
    if (index >= length) return null;

    var current = 0;
    var currentNode = head;

    while (index >= current) {
      if (current == index) return currentNode;
      currentNode = currentNode?.next;
      current++;
    }

    return null;
  }

  bool insert(int index, T value) {
    final newNode = Node(value: value);

    final previousNode = _getNode(index - 1);
    final currentNode = _getNode(index);

    previousNode?.next = newNode;
    newNode.next = currentNode;
    length++;
    return true;
  }
}
