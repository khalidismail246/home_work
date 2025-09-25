void main() {
  print(singleNumber([4, 1, 2, 1, 2]));
}

int singleNumber(List<int> nums) {
  Map<int, int> numberOfRepetition = {};
  var number = 0;
  for (var number in nums) {
    numberOfRepetition[number] = (numberOfRepetition[number] ?? 0) + 1;
  }
  numberOfRepetition.forEach((key, value) {
    if (value == 1) {
      number = key;
    }
  });
  return number;
}
