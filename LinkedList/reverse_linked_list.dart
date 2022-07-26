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
}

void main(List<String> args) {
  LinkedList<int> list = new LinkedList();
  List<int> list_ele = [7, 6, 5, 4, 3, 2, 1];
  list_ele.forEach((element) {
    list.add(element);
  });

  Solution s = new Solution();
  Node? head = list.head;
  Node? newHead = s.reverseList(head);

  while (newHead != null) {
    print(newHead.data);
    newHead = newHead.next ?? null;
  }
}

class Solution {
  Node? reverseList(Node? head) {
    if (head == null) return null;

    Node? cur = head;
    Node? prv = null;

    while (cur != null) {
      Node? next = cur.next;

      cur.next = prv;
      prv = cur;
      cur = next;
    }

    return prv;
  }
}
