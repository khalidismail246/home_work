void main() {
  // a) Create List animals with three values.
  List<String> animals = ["cat", "Dog", "monkey"];
  //b) Add a new animal, remove the last one, and update the second element.
  animals.add("fish");
  animals.remove("monkey");
  animals[1] = "cow";
  print(animals);
  //c) Print animals.first, animals.last, and animals.length.
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
