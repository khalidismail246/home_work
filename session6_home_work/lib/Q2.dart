//Create a program with the list [5, 10, 15, 20, 25]. Print the average of the numbers
void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int sum = 0;
  for (var items in numbers) {
    sum = sum + items;
  }
  double average = sum / numbers.length;
  print(average);
}
