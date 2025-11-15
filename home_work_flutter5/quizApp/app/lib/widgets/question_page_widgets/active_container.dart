import 'package:app/models/question_model.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_decoration.dart';
import 'package:app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ActiveContainer extends StatelessWidget {
  const ActiveContainer({
    super.key,
    required this.choice,
    required this.questionModel,
  });
  final String choice;
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.selectAnswerBackgroundDecoration,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            questionModel.oneChoice
                ? CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.primary,
                    child: Image.asset(
                      "assets/images/checkWhite.png",
                      width: 10,
                    ),
                  )
                : CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xff2B0063),
                    child: CircleAvatar(
                      radius: 8.5,
                      backgroundColor: Color(0xffBAB4FE),

                      child: Image.asset(
                        "assets/images/checkColor.png",
                        width: 10,
                      ),
                    ),
                  ),
            Text(
              choice,
              style: AppTextStyle.medium16(color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
