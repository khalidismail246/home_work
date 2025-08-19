void main() {
  //a) Start with List numbers = [4, 4, 5, 6, 6, 7].
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  //b) Convert it to a Set to remove duplicates and print it.
  var transformationToSet = numbers.toSet();
  print(transformationToSet);
  // c) Use add(), remove(), and contains() with the set, printing each result.
  transformationToSet.add(8);
  print(transformationToSet);
  transformationToSet.remove(5);
  print(transformationToSet);
  print(transformationToSet.contains(6));
}
