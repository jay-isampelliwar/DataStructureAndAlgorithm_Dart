//Problem Statemante

/* 
    Given a list of n-1 integers and these integers are in the range of 1 to n. 
    There are no duplicates in list. One of the integers is missing in the list. 
    Write an efficient code to find the missing integer. 
*/

void main(List<String> args) {
  // List<int> arr =  [1, 2, 3, 4, 6, 7, 8];
  // List<int> arr = [1, 2, 4];
  // List<int> arr = [1, 2, 3];
  List<int> arr = [1, 2, 3, 4, 5, 6, 8, 9];

  int n = arr.length + 1;
  int sum = (n * (n + 1) / 2).floor();

  arr.forEach((element) {
    sum -= element;
  });

  print("Missing Number is : $sum");
}
