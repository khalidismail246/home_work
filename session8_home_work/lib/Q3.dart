//Modify Attributes - Create a class Person with attributes name and age. - Create an object and set its initial values using a constructor. - Then change the age of the object and print the updated details
void main() {
  Person user1 = Person(name: "ahmed", age: 25);
  user1.age = 30;
  print("name is : ${user1.name} \n age is : ${user1.age}");
}

class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
}
