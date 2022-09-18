class Solution {
  int search(List<int> list, int target) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      int mid = (low + (high - low) / 2).toInt();

      if (target > list[mid]) {
        low = mid + 1;
      } else if (target < list[mid]) {
        high = mid - 1;
      } else {
        return mid;
      }
    }
    return -1;
  }
}

void main(List<String> args) {
  List<int> list = [1, 2, 11, 12, 14, 21, 23, 43, 44, 46, 57, 98];
  int target = 1;
  int index = Solution().search(list, target);

  if (index >= 0) {
    print("Element found at index $index");
  } else {
    print("Not found");
  }
}
