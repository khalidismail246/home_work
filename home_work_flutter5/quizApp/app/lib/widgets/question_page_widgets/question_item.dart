import 'package:app/models/question_manger.dart';
import 'package:app/models/question_model.dart';
import 'package:app/widgets/question_page_widgets/choices_item.dart';
import 'package:app/widgets/question_page_widgets/question_number_container.dart';
import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
    required this.questionModel,
    required this.questionManger,
  });
  final QuestionModel questionModel;
  final QuestionManger questionManger;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          QuestionNumberContainer(questionModel: questionModel),
          SizedBox(height: 16),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ChoicesItem(
                questionModel: questionModel,
                questionManger: questionManger,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
