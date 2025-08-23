//Write a Dart program that reads environment variables from a map. If a value is null, replace it with a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on conditions.
void main() {
  Map<String, dynamic>? factories = {
    "factory": "Ronesca",
    "country": "mansoura",
    "enviroment": null,
  };
  if (factories["enviroment"] == null) {
    factories["enviroment"] = "ready";
  }
  print(factories["factory"].toString().toUpperCase());
  print(factories["country"].toString().toUpperCase());
  print(factories["enviroment"].toString().toUpperCase());
  if (factories["enviroment"] == "ready") {
    print("Production ready");
  } else {
    print("Non-production");
  }
}
