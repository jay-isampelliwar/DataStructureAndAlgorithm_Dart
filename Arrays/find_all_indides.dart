void main(List<String> args) {
  List<int> arr = [1, 2, 5, 2, 3];
  int val = 2;
  int n = arr.length;
  Solution s = new Solution();
  print(s.targetIndices(arr, n, val));
}

class Solution {
  List<int> targetIndices(List<int> arr, int n, int val) {
    List<int> ansList = [];
    int same = 0;
    int small = 0;

    arr.forEach((element) {
      if (element == val) same++;
      if (element < val) small++;
    });

    for (int i = small; i < small + same; i++) {
      ansList.add(i);
    }

    return ansList;
  }
}
