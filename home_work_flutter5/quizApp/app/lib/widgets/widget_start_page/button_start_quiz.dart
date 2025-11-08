import 'package:app/pages/quiz_page.dart';
import 'package:flutter/material.dart';

class ButtonStartQuiz extends StatelessWidget {
  const ButtonStartQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
        height: 47,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            "Start Quis",
            style: TextStyle(
              color: Color(0xff2B0063),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "Gilroy",
            ),
          ),
        ),
      ),
    );
  }
}
