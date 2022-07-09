void main(List<String> args) {
  List<int> arr = [99, 67, 2, 3, -2, -11, 34, -4, 1, 0, 2, 8];
  Solution s = new Solution();
  s.quickSort(arr, 0, arr.length - 1);
  print(arr);
}

class Solution {
  void swap(arr, i, j) {
    int temp = arr[j];
    arr[j] = arr[i];
    arr[i] = temp;
    return;
  }

  void quickSort(arr, l, h) {
    if (l < h) {
      int pivot = partision(arr, l, h);
      quickSort(arr, l, pivot - 1);
      quickSort(arr, pivot + 1, h);
    }
  }

  int partision(arr, l, h) {
    int pivot = arr[l];
    int i = l;
    int j = h;

    while (i < j) {
      while (i <= j && arr[i] <= pivot) i++;
      while (i <= j && arr[j] > pivot) j--;

      if (i < j) swap(arr, i, j);
    }

    swap(arr, l, j);

    return j;
  }
}
