import 'dart:collection';

class Solution {
  List<int> max_of_subarrays(List<int> arr, int n, int k) {
    List<int> ans = [];
    Queue<int> list = new Queue();
    int i = 0;

    for (; i < k; i++) {
      if (list.isEmpty) {
        list.addLast(i);
      } else {
        while (list.isNotEmpty && arr[list.last] <= arr[i]) list.removeLast();
      }
    }

    ans.add(arr[list.first]);

    for (; i < n; i++) {
      if (i - list.first >= k) list.removeFirst();
      while (list.isNotEmpty && arr[list.last] <= arr[i]) list.removeLast();
      list.addLast(i);
      ans.add(arr[list.first]);
    }
    return ans;
  }
}

void main(List<String> args) {
  Solution solution = new Solution();
  List<int> arr = [1, 2, 3, 1, 4, 5, 2, 3, 6]; // case 1
  // List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // case 2
  // List<int> arr = [8, 5, 10, 7, 9, 4, 15, 12, 90, 13]; // case 3

  int n = arr.length;
  int k = 3;
  print(solution.max_of_subarrays(arr, n, k));
}
