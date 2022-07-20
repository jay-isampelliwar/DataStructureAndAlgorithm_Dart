void main(List<String> args) {
  List<int> arr = [
    -1,
    4,
    5,
    2,
    6,
    7,
    3,
    1,
    12,
    -66,
    -5,
    -999,
    98,
    443,
    -4367,
    8
  ];
  int n = arr.length - 1;
  Solution s = new Solution();
  for (int i = (n / 2).floor(); i >= 1; i--) {
    s.heapify(arr, n, i);
  }
  print(arr);
}

class Solution {
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
