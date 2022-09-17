class Solution {
  int search(List<int> list, int target) {
    int n = list.length;
    for (int i = 0; i < n; i++) {
      if (list[i] == target) return i;
    }

    return -1;
  }
}

void main(List<String> args) {
  List<int> list = [12, 43, 23, 1, 2, 44, 21, 11, 46, 98, 14, 57];
  int target = 21;

  int index = Solution().search(list, target);

  if (index >= 0) {
    print("Element found at index $index");
  } else {
    print("Not found");
  }
}
