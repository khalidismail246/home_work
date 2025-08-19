void main() {
  //a) Declare variables: String country, int year, double weight,
  // bool likesCoding. Assign values.
  String country = "mansoura";
  int year = 2002;
  double weight = 85.4;
  bool likeCoding = true;
  // b) Print a sentence that includes all values using string interpolation.
  print(
    " my country is $country \n my birthyear is $year \n weight is $weight \n do you like coding? $likeCoding ",
  );

  // c) Change weight to a different value and print only the updated one
  weight = 75.5;
  print(weight);
}
