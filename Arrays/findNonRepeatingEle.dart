void main(List<String> args) {
  var arr = [1, 3, 4, 3, 6, 1, 4];
  int ans = 0;

  arr.forEach((element) {
    ans ^= element;
  });

  print(ans);
}
