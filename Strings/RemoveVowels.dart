void main(List<String> args) {
  String str = "what is your name ?";
  int n = str.length;
  Solution s = new Solution();

  print(s.revomeVowles(str, n));
}

class Solution {
  String revomeVowles(String s, int n) {
    String ans = "";

    for (int i = 0; i < n; i++) {
      String cur = s[i];
      if (!isVowel(cur)) {
        ans += cur;
      }
    }
    return ans;
  }

  bool isVowel(String c) {
    return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
  }
}
