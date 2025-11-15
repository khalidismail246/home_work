import 'package:app/models/question_model.dart';
import 'package:app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class QuestionNumberContainer extends StatelessWidget {
  const QuestionNumberContainer({super.key, required this.questionModel});
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: BoxBorder.all(width: 2, color: Color(0xffB8B2FF)),
          color: Color(0xff8E84FF),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Image.asset(questionModel.image, width: 20),
              Text(
                "Question ${questionModel.numberQuestion}",
                style: AppTextStyle.regular12(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
