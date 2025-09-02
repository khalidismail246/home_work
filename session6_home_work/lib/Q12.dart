//Create a function that takes named parameters firstName, lastName, and an optional named parameter age. Print the full name and, if age is provided, also print 'Age: X'
void main() {
  users(fristName: "khalid", lastName: "ALi", age: 85);
}

void users({required String fristName, required String lastName, int? age}) {
  print(fristName + " " + lastName);
  if (age != null) {
    print("Age : $age");
  }
}
