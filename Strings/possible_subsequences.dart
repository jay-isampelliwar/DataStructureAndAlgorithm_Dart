class Solution {
  void allPossibleStrings(String str, List<String> ans) {
    int n = str.length;

    for (int i = 0; i < (1 << n); i++) {
      String temp = "";
      for (int j = 0; j < n; j++) {
        if (i & (1 << j) != 0) {
          temp += str[j];
        }
      }
      ans.add(temp);
    }
  }
}

void main(List<String> args) {
  String str = "abcd";
  List<String> ans = [];
  Solution().allPossibleStrings(str, ans);
  ans.sort();
  ans.forEach((element) {
    print(element);
  });
}
