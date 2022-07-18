//https://practice.geeksforgeeks.org/problems/first-element-to-occur-k-times5150/1?page=1&category[]=Arrays&curated[]=1&sortBy=submissions

/* Given an array of N integers. Find the first element that occurs atleast K number of times. */

import 'dart:collection';

void main(List<String> args) {
  List<int> arr = [1, 7, 4, 3, 4, 8, 7];
  int k = 2;
  int n = arr.length;
  Solution s = new Solution();
  print(s.firstElementKTime(arr, n, k));
}

class Solution {
  int firstElementKTime(List<int> arr, int n, int k) {
    HashMap<int, int> map = new HashMap();

    for (int i = 0; i < n; i++) {
      int element = arr[i];
      int get = 0;
      if (map.containsKey(element)) {
        map.update(element, (value) {
          get = value + 1;
          return value + 1;
        });
      } else {
        map.putIfAbsent(element, () => 1);
      }
      if (get >= k) {
        return element;
      }
    }
    return -1;
  }
}
