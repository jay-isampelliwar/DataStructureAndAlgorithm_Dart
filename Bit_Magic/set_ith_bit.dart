void main(List<String> args) {
  int num = 8;
  int i = 1;

  Solution s = new Solution();

  print(s.setIthBit(num, i));
}

class Solution {
  int setIthBit(int num, int i) {
    int temp = 1;
    temp = temp << i - 1;
    num = num | temp;
    return num;
  }
}
