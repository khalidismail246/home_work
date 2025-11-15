import 'package:app/pages/quiz_page.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_decoration.dart';
import 'package:app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class StartPages extends StatelessWidget {
  const StartPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppDecoration.mainBackgroundDecoration,
        child: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Image.asset("assets/images/GRADINET.png"),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text("Good morning,", style: AppTextStyle.regular16()),
                    SizedBox(height: 8),
                    Text(
                      "New topic is waiting",
                      style: AppTextStyle.medium24(),
                    ),
                    Expanded(
                      child: Image.asset("assets/images/imageHomePage.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QuizPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Center(
                            child: Text(
                              "Start Quiz",
                              style: AppTextStyle.medium18(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 51.5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
