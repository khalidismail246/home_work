// Write a Dart program that applies discounts to a price. Use nested if/else to apply different discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.Print the final price
import 'dart:io';

void main() {
  int priceProduct = 150;
  print("are you a student ? \n (student or no) ");
  String? user = stdin.readLineSync()!.toLowerCase();
  print("Do you have a coupon? \n (yes or no) ");
  String? coupon = stdin.readLineSync();
  print("How much money do you have?");
  int money = int.parse(stdin.readLineSync()!);
  var priceAfterDiscount;

  if (user == "student") {
    var discountStudent = priceProduct * (15 / 100);
    priceAfterDiscount = discountStudent;
  } else {
    priceAfterDiscount = priceProduct;
  }
  if (coupon == "yes") {
    var discountCoupon = priceProduct * (25 / 100);
    priceAfterDiscount = discountCoupon;
  } else {
    print("no coupon");
  }

  bool check = priceAfterDiscount <= money;
  if (check) {
    print("you can buy");
  } else {
    print("you can't buy");
  }
  print("price product is : $priceAfterDiscount");

  // if the student and the coupon are linked to each other

  // if (user == "student") {
  //   var discountStudent = priceProduct * (15 / 100);

  //   if (coupon == "yes") {
  //     var discountStudentAndCoupon = priceProduct * (25 / 100);
  //     priceAfterDiscount = discountStudentAndCoupon;
  //   } else {
  //     priceAfterDiscount = discountStudent;
  //   }
  // } else if (user == "no") {
  //   if (coupon == "yes") {
  //     var discountCoupon = priceProduct * (10 / 100);
  //     priceAfterDiscount = discountCoupon;
  //   } else {
  //     priceAfterDiscount = priceProduct;
  //   }
  // }
  // bool check = priceAfterDiscount <= money;
  // if (check) {
  //   print("you can buy");
  // } else {
  //   print("you can't buy");
  // }
  // print("price product is : $priceAfterDiscount");
}
