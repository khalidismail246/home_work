// Create a program that declares an integer for birthYear and calculates the age assuming the current year is 2025. Print 'You are X years old'
void main() {
  calculatesYearsOld(BirthYear: 2002);
}

void calculatesYearsOld({required int BirthYear}) {
  int currentYear = 2025;
  if (BirthYear >= 2025 || currentYear > 2025) {
    print("error 404");
  } else {
    int result = currentYear - BirthYear;
    print("You are $result years old");
  }
  ;
}
