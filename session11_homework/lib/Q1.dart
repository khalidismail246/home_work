// Design an OOP model for planning trip fuel across multiple vehicle types.
//- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors (invalid → print an error; keep previous values).
//Create at least two specialized vehicle types that inherit from the general type and introduce one private field each affecting fuel usage, with validation.
// Define a fuel computation method in the general type; specialized types must override it with their own rule.
//In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print which vehicles cannot complete the route under their own constraints (you define the constraint per type).
void main() {
  List<Vehicle> vehicles = [
    Car(brand: "Kia", numberOfTires: 4, currentCapacity: 750),
    Buss(brand: "Toyota", numberOfTires: 6, currentCapacity: 500),
  ];
  List<int> trips = [100, 200];
  for (var vehicle in vehicles) {
    var fuelConsumption = 0;
    for (var trip in trips) {
      fuelConsumption = fuelConsumption + vehicle.fuelComputation(trip);
    }
    if (vehicle.currentCapacity < fuelConsumption) {
      print("${vehicle.brand} has not enough fuel to complete the trip");
    }
  }
}

abstract class Vehicle {
  String _brand = "Toyota";
  int _numberOfTires = 4;
  int currentCapacity;

  Vehicle({
    required String brand,
    required int numberOfTires,
    required this.currentCapacity,
  }) {
    if (numberOfTires >= 2) {
      _numberOfTires = numberOfTires;
    } else {
      print(
        "The number of car tires is less than two, it is not a car , error404",
      );
    }
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print("error 404");
    }
  }
  set brand(String brand) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print("error 404");
    }
  }

  set numberOfTires(int numberOfTires) {
    if (numberOfTires >= 2) {
      _numberOfTires = numberOfTires;
    } else {
      print(
        "The number of car tires is less than two, it is not a car , error404",
      );
    }
  }

  String get brand => this._brand;
  int get numberOfTires => this._numberOfTires;
  int fuelComputation(int discount);
}

class Car extends Vehicle {
  int _fuelComputationPerKm = 10;
  Car({
    required super.brand,
    required super.numberOfTires,
    required super.currentCapacity,
  });

  @override
  int fuelComputation(int distance) {
    return _fuelComputationPerKm * (distance ~/ numberOfTires);
  }
}

class Buss extends Vehicle {
  int _fuelComputationPerKm = 20;
  Buss({
    required super.brand,
    required super.numberOfTires,
    required super.currentCapacity,
  });

  @override
  int fuelComputation(int distance) {
    return _fuelComputationPerKm * (distance ~/ numberOfTires);
  }
}
