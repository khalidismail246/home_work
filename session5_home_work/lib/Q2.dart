//Create a program that stores country codes and names. Start with: EG → Egypt, SA → Saudi  Arabia, AE → UAE. Add QA → Qatar and then print the name of the country with the code EG
void main() {
  List<Map<String, String>> countryCodes = [
    {"Egypt": "EG"},
    {"saudi Arabia": "SA"},
    {"UAE": "AE"},
  ];
  countryCodes.add({"Qatar": "QA"});
  print(countryCodes[0]);
}
