import 'package:application/widgets/age_Section.dart';
import 'package:application/widgets/calculater_Section.dart';
import 'package:application/widgets/gender/gender_Section.dart';
import 'package:application/widgets/height_Section.dart';
import 'package:application/widgets/weight_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 100;
  int weight = 50;
  int age = 10;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        title: Text(
          "BMI CAlCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color(0xff04061D),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 24,
                children: [
                  GenderSection(
                    selectedGender: gender,
                    onGenderChanged: (newGender) {
                      setState(() {
                        gender = newGender;
                      });
                    },
                  ),
                  HeightSection(
                    height: height,
                    onHeightChanged: (newHeight) {
                      setState(() {
                        height = newHeight;
                      });
                    },
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      WeightSection(
                        weight: weight,
                        onWeightChanged: (newWeight) {
                          setState(() {
                            weight = newWeight;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      AgeSection(
                        age: age,
                        onAgeChanged: (newAge) {
                          setState(() {
                            age = newAge;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          CalculaterSection(
            height: height,
            weight: weight,
            age: age,
            gender: gender ?? " ",
          ),
        ],
      ),
    );
  }
}
