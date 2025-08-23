//Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry  'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
void main() {
  Map<String, dynamic> countryCodes = {"EG": "Egypt"};
  print(countryCodes["EG"]);
  countryCodes["EQ"] = "Qatar";
  print(countryCodes.length);
  if (countryCodes.containsKey("JO")) {
    print("Jordan");
  } else {
    print("Jordan missing");
  }
}
