//1 Create a class City with attributes name and population. In main(), create two city objects and print their details.
void main() {
  City city1 = City(name: "Cairo", population: 458900);
  City city2 = City(name: "Alex", population: 258963);
  print("city : ${city1.name} , population : ${city1.population}");
  print("city : ${city2.name} , population : ${city2.population}");
}

class City {
  String? name;
  int? population;
  City({required this.name, required this.population});
}
