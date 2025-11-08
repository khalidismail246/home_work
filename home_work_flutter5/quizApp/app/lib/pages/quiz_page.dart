import 'package:app/const/const_background_color.dart';
import 'package:app/models/Question_manger.dart';
import 'package:app/widgets/widget_quiz_page/number_question.dart';
import 'package:app/widgets/widget_quiz_page/question_view_widget.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuestionManger questionManger = QuestionManger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstBackgroundColor(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 44),
              NumberQuesetion(
                questionModel:
                    questionManger.question[questionManger.isnumberQuestion],
              ),
              SizedBox(height: 16),
              Expanded(
                child: QuestionViewWidget(
                  questionModel:
                      questionManger.question[questionManger.isnumberQuestion],
                  questionManger: questionManger,
                  onchange: () {
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
