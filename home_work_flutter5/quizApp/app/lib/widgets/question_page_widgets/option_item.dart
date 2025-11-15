import 'package:app/models/question_model.dart';
import 'package:app/widgets/question_page_widgets/active_container.dart';
import 'package:app/widgets/question_page_widgets/not_active_container.dart';
import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({
    super.key,
    required this.isSelected,
    required this.choice,
    required this.questionModel,
  });
  final bool isSelected;
  final String choice;
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveContainer(choice: choice, questionModel: questionModel)
        : NotActiveContainer(choice: choice);
  }
}
