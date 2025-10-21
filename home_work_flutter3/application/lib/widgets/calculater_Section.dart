import 'package:application/widgets/result_Page.dart';
import 'package:flutter/material.dart';

class CalculaterSection extends StatelessWidget {
  const CalculaterSection({
    super.key,
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
  });
  final double height;
  final int weight;
  final int age;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        double heightInMeters = height / 100;
        double bmi = weight / (heightInMeters * heightInMeters);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contaxt) =>
                ResultPage(bmi: bmi, age: age, gender: gender),
          ),
        );
      },
      child: Container(
        color: Color(0xffED0D54),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            "CALCULATE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
