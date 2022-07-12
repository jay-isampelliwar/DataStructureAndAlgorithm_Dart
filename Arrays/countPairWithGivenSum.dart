/* Given an array of N integers, and an integer K, 
 find the number of pairs of elements in the array
  whose sum is equal to K. */

//https://practice.geeksforgeeks.org/problems/count-pairs-with-given-sum5022/1/?page=1&status[]=unsolved&category[]=Arrays&curated[]=7&curated[]=8&sortBy=submissions#

import 'dart:collection';

void main(List<String> args) {
  List<int> arr = [1, 5, 7, 1];
  // List<int> arr = [1, 1, 1, 1];

  int n = arr.length;
  int k = 6;
  Solution s = new Solution();
  print(s.getPairCount(arr, n, k));
}

class Solution {
  int getPairCount(List<int> arr, int n, int k) {
    HashMap<int, int> map = new HashMap();
    int count = 0;
    arr.forEach((element) {
      if (map.containsKey(element)) {
        map.update(element, (value) => value + 1);
      } else {
        map.putIfAbsent(element, () => 1);
      }
    });

    arr.forEach((element) {
      int item = k - element;

      if (map.containsKey(item)) {
        map.update(element, (value) => value - 1);
        map.update(item, (value) {
          count += value;

          return value;
        });
      }
    });
    return count;
  }
}
