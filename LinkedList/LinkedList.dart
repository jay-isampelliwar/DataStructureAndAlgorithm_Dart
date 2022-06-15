class Node<E> {
  Node({required this.data, this.next});
  E? data;
  Node? next;
}

class LinkedList<E> {
  Node? head;
  Node? tail;
  int size = 0;

  void add(E data) {
    Node node = new Node(data: data);
    size += 1;

    if (head == null) {
      head = node;
    } else {
      Node? temp = head;

      while (temp!.next != null) {
        temp = temp.next;
      }

      temp.next = node;
    }
  }

  E? remove(int index) {
    if (head == null) return null;

    if (index <= 0 || index > size) return null;

    size -= 1;
    E? data;

    if (index == 1) {
      data = head!.data;
      head = head!.next;
      return data;
    }

    Node? temp = head;

    for (int i = 1; i < index - 1; i++) {
      temp = temp!.next;
    }
    data = temp!.next!.data;
    temp.next = temp.next!.next;

    return data;
  }

  void display() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  LinkedList<int> list = new LinkedList();

  list.add(23);
  list.add(26);
  list.add(2);
  list.add(53);
  list.add(21);
  list.display();

  list.remove(list.size + 22);
  print("\n");
  list.display();
}
