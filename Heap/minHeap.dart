class MinHeap {
  List<int>? arr = [];
  int? size = 0;
  MinHeap() {
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

      if (arr![parent] > arr![i]) {
        swap(arr, i, parent);
        i = parent;
      } else {
        return;
      }
    }
  }

  int peek() {
    if (size == 0) throw Exception("Heap is Empty");
    return arr![1];
  }

  void poll() {
    if (size == 0) throw Exception("Heap is Empty");

    arr![1] = arr![size!];
    arr!.removeLast();
    size = size! - 1;
    int i = 1;

    while (i < size!) {
      int left = i * 2;
      int right = i * 2 + 1;
      int smaller = 0;
      if (left > size! && right > size!)
        return;
      else if (left > size! && right <= size!)
        smaller = right;
      else if (right > size! && left <= size!)
        smaller = left;
      else
        smaller = arr![left] > arr![right] ? right : left;

      if (arr![i] > arr![smaller]) {
        swap(arr, i, smaller);
        i = smaller;
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
}

void main(List<String> args) {
  MinHeap heap = new MinHeap();
  heap.offer(8);
  heap.offer(2);
  heap.offer(3);
  heap.offer(9);
  heap.offer(7);
  heap.offer(1);

  print(heap.peek());
  print(heap.arr);
}
