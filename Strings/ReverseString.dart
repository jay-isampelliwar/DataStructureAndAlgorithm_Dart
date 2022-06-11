void main(List<String> args) {
  String str = "Hello world I like dart language";
  String reverse_str = "";

  int n = str.length;

  for (int i = n - 1; i >= 0; i--) {
    reverse_str += str[i];
  }

  print(reverse_str);
}
