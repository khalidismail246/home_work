import 'package:app/const/const_background_color.dart';
import 'package:app/widgets/widget_start_page/button_start_quiz.dart';
import 'package:app/widgets/widget_start_page/image_in_start_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstBackgroundColor(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 74),
              Text(
                "Good morning,",
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "New topic is waiting ",
                style: TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ImageInStartPage(),
              ButtonStartQuiz(),
              SizedBox(height: 52),
            ],
          ),
        ),
      ),
    );
  }
}
