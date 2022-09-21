class Solution {
  bool isPalindrome(String str, int i, int j) {
    if (i >= j) return true;

    if (str[i] != str[j]) return false;

    return isPalindrome(str, i + 1, j - 1);
  }
}

void main(List<String> args) {
  String str = "Racecar";
  int i = 0;
  int j = str.length - 1;
  String temp = str.toLowerCase();
  bool isPalindrome = Solution().isPalindrome(temp, i, j);

  if (isPalindrome) {
    print("Yes, $str is Palindrome");
  } else {
    print("No, $str is not Palindrome");
  }
}
