import 'package:application/widgets/age_Section.dart';
import 'package:application/widgets/calculater_Section.dart';
import 'package:application/widgets/gender/gender_Section.dart';
import 'package:application/widgets/height_Section.dart';
import 'package:application/widgets/weight_section.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 100;
  int weight = 50;
  int age = 0;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff04061D),
          title: Row(
            children: [
              Text(
                "BMI CAlCULATOR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff04061D),
        body: Column(
          children: [
            Padding(
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
            Spacer(flex: 2),
            CalculaterSection(
              height: height,
              weight: weight,
              age: age,
              gender: gender ?? " ",
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
