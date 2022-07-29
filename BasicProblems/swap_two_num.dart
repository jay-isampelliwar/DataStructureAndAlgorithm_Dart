void main(List<String> args) {
  int a = 21;
  int b = 18;

  print("Befor swaping a = $a and b = $b");

  a = a + b;
  b = a - b;
  a = a - b;

  print("After swaping a = $a and b = $b");
}
