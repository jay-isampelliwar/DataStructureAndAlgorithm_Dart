class Solution {
  void subsequenceSum(
      int i, int sum, List<int> arr, int n, int x, List<int> ds) {
    if (i >= n) {
      if (sum == x) {
        print(ds);
      }
      return;
    }
    int cur = arr[i];
    ds.add(cur);
    sum += cur;
    subsequenceSum(i + 1, sum, arr, n, x, ds);
    ds.removeLast();
    sum -= cur;
    subsequenceSum(i + 1, sum, arr, n, x, ds);
  }
}

void main(List<String> args) {
  List<int> arr = [1, 3, 1, 4, 6, 2, 8, 2, 5, 6, 2];
  int n = arr.length;
  int target = 21;
  Solution().subsequenceSum(0, 0, arr, n, target, []);
}
