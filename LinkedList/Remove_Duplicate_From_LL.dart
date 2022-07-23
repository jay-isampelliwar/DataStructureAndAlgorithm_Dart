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

  void printList() {
    Node? temp = head!;

    while (temp != null) {
      print(temp.data);
      temp = temp.next ?? null;
    }
  }
}

void main(List<String> args) {
  LinkedList<int> list = new LinkedList();
  List<int> list_ele = [1, 1, 2, 3, 3, 3, 4, 5, 6, 10, 10];
  list_ele.forEach((element) {
    list.add(element);
  });

  Solution s = new Solution();
  Node? head = list.head;
  s.removeDuplicates(head);
  list.printList();
}

class Solution {
  Node? removeDuplicates(Node? head) {
    if (head == null) return null;
    if (head.next == null) return head;
    Node? cur = head;
    Node? next = head.next;

    while (next != null) {
      if (cur!.data == next.data) {
        next = next.next;
      } else {
        cur.next = next;
        cur = cur.next;
        next = next.next;
      }
    }

    cur!.next = next;
    cur = cur.next;

    return head;
  }
}
