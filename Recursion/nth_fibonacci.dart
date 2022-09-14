class Solution {
  int nthFibonacci(int i) {
    if (i <= 1) {
      return i;
    }

    int a = nthFibonacci(i - 1);
    int b = nthFibonacci(i - 2);

    return a + b;
  }
}

void main(List<String> args) {
  print(Solution().nthFibonacci(6));
}
