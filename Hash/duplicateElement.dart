import 'dart:collection';

void main(List<String> args) {
  var arr = [1, 6, 4, 3, 2, 8, 6];
  var set = HashSet<int>();

  arr.forEach((element) {
    if (!set.isEmpty && set.contains(element)) {
      print(element);
      return;
    } else {
      set.add(element);
    }
  });
}
