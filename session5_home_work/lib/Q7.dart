// Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together, and print the total
void main() {
  List<int> scores = [10, 0, 20, 30];
  var total = 0;
  for (var num in scores) {
    if (num != 0) {
      total = total + num;
    }
  }
  print(total);
}
