void main(List<String> args) {
  String num1 = '1';
  String num2 = '111';

  Solution s = new Solution();
  print(s.addBinary(num2, num1));
}

class Solution {
  String addBinary(String a, String b) {
    int temp = 0;

    temp += getValue(a);
    temp += getValue(b);

    String ans = "";

    while (temp > 0) {
      if (temp % 2 == 0) {
        ans += '0';
      } else {
        ans += '1';
      }

      temp = (temp / 2).floor();
    }

    return reverse(ans);
  }

  int getValue(String a) {
    int i = a.length - 1;

    int val = 0;
    int p = 1;

    while (i >= 0) {
      if (a[i] == '1') {
        val += p;
      }
      i--;
      p *= 2;
    }

    return val;
  }

  String reverse(String ans) {
    int j = ans.length - 1;
    String rev = "";

    while (j >= 0) {
      rev += ans[j];
      j--;
    }

    return rev;
  }
}
