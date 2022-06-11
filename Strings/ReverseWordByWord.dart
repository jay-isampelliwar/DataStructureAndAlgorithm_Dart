void main(List<String> args) {
  String str = "Hello world I like dart language";
  var arr = str.split(" ");

  String reverse_word = "";
  int j = arr.length - 1;

  for (; j >= 0; j--) {
    reverse_word += arr[j] + " ";
  }

  reverse_word = reverse_word.substring(0, reverse_word.length - 1);
  print(reverse_word);
}
