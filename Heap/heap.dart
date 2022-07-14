void main(List<String> args) {
  Heap q = new Heap();
  q.offer(12);
  q.offer(23);

  q.offer(45);

  q.offer(66);
  q.offer(100);
  q.display();
}

class Heap {
  List<int>? arr = [];
  int? size;
  Heap() {
    this.arr!.add(-1);
    this.size = 0;
  }

  void offer(int data) {
    if (size == 0) {
      size = size! + 1;
      arr!.add(data);
      return;
    }

    size = size! + 1;
    arr!.add(data);
    int i = size!;

    while (i > 1) {
      int parent = (i / 2).floor();

      if (arr![parent] < arr![i]) {
        swap(arr, i, parent);
        i = parent;
      } else {
        return;
      }
    }
  }

  void poll() {
    if (size == 0) throw Exception("Heap is Empty");

    arr![1] = arr![size!];
    arr![size!] = 0;
    size = size! - 1;
    int i = 1;

    while (i < size!) {
      int left = i * 2;
      int right = i * 2 + 1;
      int larger = 0;

      if (left > size! && right <= size!)
        larger = right;
      else if (right > size! && left <= size!)
        larger = left;
      else
        larger = arr![left] > arr![right] ? left : right;

      if (arr![i] < arr![larger]) {
        swap(arr, i, larger);
        i = larger;
      } else {
        return;
      }
    }
  }

  void swap(arr, i, j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    return;
  }

  void display() {
    for (int i = 1; i <= size!; i++) {
      print("${arr![i]} ");
    }
  }
}
