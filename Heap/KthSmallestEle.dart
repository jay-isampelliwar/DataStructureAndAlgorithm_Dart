//

/*Given an array and a number k where k is smaller than the size of the array, 
we need to find the k’th smallest element in the given array. 
It is given that all array elements are distinct.*/

import 'maxHeap.dart';

void main(List<String> args) {
  List<int> arr = [2, 55, 13, 76, -9, 21, 23];
  // List<int> arr = [7, 10, 4, 3, 20, 15];
  // List<int> arr = [-7, 10, -4, -3, 20, -15];

  int k = 4;
  int n = arr.length;

  Solution s = new Solution();

  print(s.findKthMin(arr, n, k));
}

class Solution {
  int findKthMin(arr, n, k) {
    MaxHeap heap = new MaxHeap();

    int i = 0;

    for (; i < k && i < n; i++) {
      heap.offer(arr[i]);
    }

    for (; i < n; i++) {
      int cur = arr[i];

      if (cur < heap.peek()) {
        heap.poll();
        heap.offer(cur);
      }
    }

    return heap.peek();
  }
}
