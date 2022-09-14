class Solution {
  int findFibonacci(int n) {
    if (n <= 1) return n;

    int a = findFibonacci(n - 2);
    int b = findFibonacci(n - 1);

    return a + b;
  }
}

void main(List<String> args) {
  print(Solution().findFibonacci(1));
}
