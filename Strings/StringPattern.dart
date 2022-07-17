import 'dart:convert';

void main(List<String> args) {
  AsciiCodec asciiCodec = new AsciiCodec();
  int n = 9;
  List<String> ans = [];

  String a = "";

  String b = "";
  for (int i = 1; i <= n; i++) {
    List<int> temp = [i + 48];
    a += asciiCodec.decode(temp);
    b = asciiCodec.decode(temp) + b;

    if (i > 1) {
      ans.add(a + b.substring(1));
    } else {
      ans.add(a);
    }
  }

  ans.forEach((element) {
    print(element);
  });
}
