import 'package:app/pages/question_page.dart';
import 'package:app/widgets/color_background_pages.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorBackgroundPages(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 20),
              Text(
                "Good morning,",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Nunito",
                ),
              ),
              Text(
                'New topic is waiting',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(child: SizedBox()),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Start Quiz",
                        style: TextStyle(
                          color: Color(0xFF3A0066),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
