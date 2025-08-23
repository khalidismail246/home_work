//Create a Dart program that safely reads a phone number from a map. If the phone number is null, print a default message. Then update the phone number and print its length
void main() {
  Map<String, dynamic> users = {
    "user": "khalid",
    "phoneNumber": 12345685247856,
  };
  bool check = users["phoneNumber"] == null;
  if (check) {
    print("check your phoneNumber , there is not phoneNumber !! ");
  }
  users["phoneNumber"] = 15124848595;
  print(users["phoneNumber"].toString().length);
}
