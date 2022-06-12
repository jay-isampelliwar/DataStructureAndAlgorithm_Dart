void main(List<String> args) {
  var arr = [3, 3, 4, 2, 4, 4, 2, 4, 4, 4]; // 1)
  // var arr = [3, 3, 4, 2, 4, 4, 2, 4]; //2) input array without majority element
  // var arr = [1, 1, 2, 1, 3, 5, 1]; //3)
  int n = arr.length;
  int count = 1;
  int ele = arr[0];

  for (int i = 1; i < n; i++) {
    int item = arr[i];

    if (ele == item) {
      count++;
    } else {
      count--;
      if (count == 0) {
        ele = item;
        count = 1;
      }
    }
  }

  count = 0;

  arr.forEach((element) {
    if (ele == element) count++;
  });

  if (n / 2 < count) {
    print(ele);
  } else {
    print(-1);
  }
}
