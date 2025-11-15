import 'package:app/models/question_manger.dart';
import 'package:app/pages/result_page.dart';
import 'package:app/theme/app_colors.dart';
import 'package:app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class NextActionButton extends StatelessWidget {
  const NextActionButton({
    super.key,
    required this.pageController,
    required this.pagecount,
    required this.questionManger,
  });
  final PageController pageController;
  final int pagecount;
  final QuestionManger questionManger;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (pageController.page!.toInt() < pagecount - 1) {
          pageController.nextPage(
            duration: Duration(milliseconds: 600),
            curve: Curves.linear,
          );
        } else {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ResultPage(questionManger: questionManger);
              },
            ),
            (route) => false,
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(8),
          border: BoxBorder.all(color: Color(0xff8E84FF)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Next", style: AppTextStyle.medium16()),
              Icon(Icons.arrow_forward_ios, color: Colors.white, size: 19),
            ],
          ),
        ),
      ),
    );
  }
}
