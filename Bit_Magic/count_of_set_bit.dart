void main(List<String> args) {
  int num = 21;
  Solution s = new Solution();

  print(s.countSetBit(num));
}

class Solution {
  int countSetBit(int num) {
    int count = 0;

    while (num > 0) {
      if ((num & 1) == 1) count++;

      num >>= 1;
    }

    return count;
  }
}
