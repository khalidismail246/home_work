import 'package:app/models/Question_manger.dart';
import 'package:app/pages/result_page.dart';
import 'package:app/widgets/widget_quiz_page/button_widgets.dart';
import 'package:flutter/material.dart';

class TransferButton extends StatelessWidget {
  const TransferButton({
    super.key,
    required this.questionManger,
    required this.onchange,
  });
  final QuestionManger questionManger;
  final VoidCallback onchange;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonWidgets(
          onchange: () {
            if (questionManger.isnumberQuestion > 0) {
              questionManger.back();
              onchange();
            } else {
              Navigator.pop(context);
            }
          },
          color: Colors.transparent,
          child: [
            Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
            SizedBox(width: 8),
            Text(
              "Back",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Gilroy",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        ButtonWidgets(
          onchange: () {
            if (questionManger.isnumberQuestion <
                questionManger.question.length - 1) {
              questionManger.next();
              onchange();
            } else {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ResultPage(questionManger: questionManger),
                ),
                (route) => false,
              );
            }
          },
          color: Color(0xff8E84FF),
          child: [
            Text(
              "Next",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Gilroy",
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 11),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ],
    );
  }
}
