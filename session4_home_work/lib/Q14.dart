// Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is greater than or equal to 40.
void main() {
  List<int>? score = [25, 8, 44, 82, 14];
  if (score.isEmpty || score == null) {
    print("NO Score");
  } else {
    var totalSum = score.first + score.last;
    print(totalSum);
    if (totalSum >= 40) {
      print("it is greater than or equal to 40 ");
    } else {
      print("it isn't greater than or equal to 40 ");
    }

    ;
  }
}
