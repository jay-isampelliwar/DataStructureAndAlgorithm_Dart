void main(List<String> args) {
  List<int> arr = [99, 67, 2, 3, -2, -11, 34, -4, 1, 0, 2, 8];
  Solution s = new Solution();
  s.mergeSort(arr, 0, arr.length - 1);

  print(arr);
}

class Solution {
  void mergeSort(arr, l, h) {
    if (l < h) {
      int mid = (l + (h - l) / 2).floor();
      mergeSort(arr, l, mid);
      mergeSort(arr, mid + 1, h);
      merge(arr, l, mid, h);
    }
  }

  void merge(arr, l, mid, h) {
    int i = l;
    int j = mid + 1;
    List<int> temp = [];

    while (i <= mid && j <= h) {
      if (arr[i] > arr[j]) {
        temp.add(arr[j++]);
      } else {
        temp.add(arr[i++]);
      }
    }

    while (i <= mid) {
      temp.add(arr[i++]);
    }

    while (j <= h) {
      temp.add(arr[j++]);
    }

    for (int k = l, p = 0; k <= h && p < temp.length; p++, k++) {
      arr[k] = temp[p];
    }
  }
}
