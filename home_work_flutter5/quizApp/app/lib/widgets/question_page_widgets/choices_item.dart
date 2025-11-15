import 'package:app/models/question_manger.dart';
import 'package:app/models/question_model.dart';
import 'package:app/theme/app_text_style.dart';
import 'package:app/widgets/question_page_widgets/option_list.dart';
import 'package:flutter/material.dart';

class ChoicesItem extends StatelessWidget {
  const ChoicesItem({
    super.key,
    required this.questionModel,
    required this.questionManger,
  });

  final QuestionModel questionModel;
  final QuestionManger questionManger;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(questionModel.question, style: AppTextStyle.medium24()),
        SizedBox(height: 32),
        Expanded(
          child: OptionList(
            questionModel: questionModel,
            questionManger: questionManger,
          ),
        ),
      ],
    );
  }
}
