//https://www.geeksforgeeks.org/kth-smallestlargest-element-unsorted-array/

/* Write an efficient program for printing kth largest elements in an array. 
Elements in an array can be in any order.
For example: if the given array is [1, 23, 12, 9, 30, 2, 50] 
and you are asked for the largest 3rd elements i.e., k = 3 
then your program should print 23.
*/
import 'minHeap.dart';

void main(List<String> args) {
  List<int> arr = [1, 23, 12, 9, 30, 2, 50];
  int k = 1;
  int n = arr.length;
  Solution s = new Solution();
  print(s.findKthLargest(arr, n, k));
}

class Solution {
  int findKthLargest(List<int> arr, int n, int k) {
    MinHeap heap = new MinHeap();
    int i = 0;
    for (; i < k && i < n; i++) {
      heap.offer(arr[i]);
    }

    for (; i < n; i++) {
      if (heap.peek() < arr[i]) {
        heap.poll();
        heap.offer(arr[i]);
      }
    }
    return heap.peek();
  }
}
