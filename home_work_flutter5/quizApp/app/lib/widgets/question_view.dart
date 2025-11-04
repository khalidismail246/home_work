import 'package:app/models/questions_manger.dart';
import 'package:app/pages/results_page.dart';
import 'package:app/widgets/container_answers.dart';
import 'package:app/widgets/number_question.dart';
import 'package:app/widgets/transfer/transfer_button_view.dart';
import 'package:flutter/material.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  QuestionsManger questionsManger = QuestionsManger();
  int isCurrent = 0;
  void nextQuestion() {
    if (isCurrent < questionsManger.quistion.length - 1) {
      setState(() {
        isCurrent++;
      });
    } else {
      // Navigate to results page when all questions are answered
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ResultsPage(questions: questionsManger.quistion),
        ),
      );
    }
  }

  void backQuestion() {
    setState(() {
      if (isCurrent > 0) {
        isCurrent--;
      } else {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = questionsManger.quistion[isCurrent];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NumberQuestion(questionNumber: isCurrent),
          Text(
            question.question,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: question.answers.length,
              itemBuilder: (context, index) {
                final answer = question.answers[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ContainerAnswers(
                    answertext: answer,
                    isSelected: question.selectedAnswer == answer,
                    onSelected: (selected) {
                      setState(() {
                        question.selectedAnswer = selected ? answer : null;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          TransferButtonView(ontapNext: nextQuestion, ontapBack: backQuestion),
        ],
      ),
    );
  }
}
