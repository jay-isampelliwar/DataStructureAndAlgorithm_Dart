class Node<E> {
  Node({required this.data, this.next});
  E? data;
  Node? next;
}

class Stack<E> {
  Node? head;
  int size = 0;

  void push(E data) {
    Node node = new Node(data: data);
    size += 1;

    if (head == null) {
      head = node;
    } else {
      node.next = head;
      head = node;
    }
  }

  E? pop() {
    if (head == null) {
      throw ("Stack is underflow");
    }
    ;
    size -= 1;
    E? data = head!.data;
    head = head!.next;

    return data;
  }

  E? peek() {
    if (head == null) {
      throw ("Stack is underflow");
    }
    return head!.data;
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
  Stack<int> st = new Stack();
  st.push(5);
  st.push(2);
  print("size is : ${st.size}");
  st.push(6);
  st.push(1);
  st.push(4);
  print("size is : ${st.size}");
  st.pop();
  st.display();
  st.pop();
  st.pop();
  st.display();
  print("size is : ${st.size}");
  print(st.pop());
  st.pop();
  print("size is : ${st.size}");

  print(st.peek());
}
