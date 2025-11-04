import 'package:app/widgets/color_background_pages.dart';
import 'package:app/widgets/question_view.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ColorBackgroundPages(child: QuestionView()));
  }
}
