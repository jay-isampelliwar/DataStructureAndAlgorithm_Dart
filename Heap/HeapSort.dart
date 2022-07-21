void main(List<String> args) {
  List<int> arr = [-1, 4, 7, 0, 2, -3, -3, -1, 5, -99, -30, -32];

  int n = arr.length - 1;
  Solution s = new Solution();

  for (int i = (n / 2).floor(); i >= 1; i--) {
    s.heapify(arr, n, i);
  }
  s.heapsort(arr, n);

  print(arr);
}

class Solution {
  void heapsort(List<int> arr, int n) {
    for (int i = n; i > 1; i--) {
      swap(arr, i, 0);
      heapify(arr, i - 1, 0);
    }
  }

  void heapify(List<int> arr, int n, int i) {
    int l = i * 2;
    int r = i * 2 + 1;
    int larger = i;

    if (l <= n && arr[l] > arr[larger]) {
      larger = l;
    }
    if (r <= n && arr[r] > arr[larger]) {
      larger = r;
    }
    if (larger != i) {
      swap(arr, i, larger);
      heapify(arr, n, larger);
    }
  }

  void swap(arr, i, j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    return;
  }
}
