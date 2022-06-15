import 'dart:collection';

void main(List<String> args) {
  var arr = [
    "Hello",
    "Alaska",
    "Dad",
    "Peace",
    "pop",
    "write",
  ];
  Solution s = Solution();
  s.findWords(arr);
  print(s.findWords(arr));
}

class Solution {
  List<String>? findWords(List<String> arr) {
    HashMap<String, int> map = HashMap();
    fillMap(map, "qwertyuiopQWERTYUIOP", 1);
    fillMap(map, "asdfghjklASDFGHJKL", 2);
    fillMap(map, "zxcvbnmZXCVBNM", 3);

    List<String> list = [];
    int n = arr.length;
    arr.forEach((element) {
      String cur = element;
      int len = element.length;
      bool isSameRow = true;
      int? rowNum = map[element[0]];

      for (int i = 1; i < len; i++) {
        if (rowNum != map[element[i]]) {
          isSameRow = false;
        }
      }
      if (isSameRow) {
        list.add(cur);
      }
    });

    return list;
  }

  void fillMap(HashMap<String, int> map, String str, int row) {
    int n = str.length;
    for (int i = 0; i < n; i++) {
      map.addAll({str[i]: row});
    }
  }
}
