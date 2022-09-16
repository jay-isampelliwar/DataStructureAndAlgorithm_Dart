// https://www.codingninjas.com/codestudio/contests/recursion-contest-by-mohammad-fraz/5038397/problems/8857
// Ninja is good at numbers. So today his friend gave him a task that required him to find out numbers made of 2 and 5 only less than a given limit.
class Solution {
  void createSequence(int current, int n) {
    if (current > n) {
      return;
    }

    if (current != 0) print(current);

    createSequence(current * 10 + 2, n);
    createSequence(current * 10 + 5, n);
  }
}

void main(List<String> args) {
  int n = 1000;
  Solution().createSequence(0, n);
}
