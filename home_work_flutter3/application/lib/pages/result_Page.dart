import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmi,
    required this.age,
    required this.gender,
  });
  final double bmi;
  final int age;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04061D),
      body: Center(
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Gender : $gender",
              style: TextStyle(
                color: Colors.grey.withValues(alpha: 1),
                fontSize: 20,
              ),
            ),
            Text(
              "Age : $age",
              style: TextStyle(
                color: Colors.grey.withValues(alpha: 1),
                fontSize: 20,
              ),
            ),
            Text(
              "Result BMI :",
              style: TextStyle(
                color: Colors.grey.withValues(alpha: 1),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${bmi.toInt()}",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
