// https://leetcode.com/problems/find-the-duplicate-number/

/*
 Given an array of N + 1 size, where each element is between 1 and N. 
 Assuming there is only one duplicate number, 
 your task is to find the duplicate number.
 */
void main(List<String> args) {
  List<int> arr = [3, 1, 3, 4, 2];

  Solution s = new Solution();
  print(s.findDuplicate(arr));
}

class Solution {
  int findDuplicate(List<int> arr) {
    int slow = arr[0];
    int fast = arr[0];

    do {
      slow = arr[slow];
      fast = arr[arr[fast]];
    } while (slow != fast);

    fast = arr[0];

    while (fast != slow) {
      slow = arr[slow];
      fast = arr[fast];
    }

    return slow;
  }
}
