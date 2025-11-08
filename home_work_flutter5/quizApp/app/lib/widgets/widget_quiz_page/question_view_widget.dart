import 'package:app/models/Question_manger.dart';
import 'package:app/models/Question_model.dart';
import 'package:app/widgets/widget_quiz_page/chooses_view.dart';
import 'package:app/widgets/widget_quiz_page/transfer_button.dart';
import 'package:flutter/material.dart';

class QuestionViewWidget extends StatelessWidget {
  const QuestionViewWidget({
    super.key,
    required this.questionModel,
    required this.questionManger,
    required this.onchange,
  });
  final QuestionModel questionModel;
  final QuestionManger questionManger;
  final VoidCallback onchange;

  @override
  Widget build(BuildContext context) {
    var oneChoose = questionModel.isOnechoose;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            questionModel.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 32),
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/GRADINET.png",
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    ChoosesView(
                      choose: questionModel.chooses[0],
                      isSelected: questionModel.select[0],
                      ontap: () {
                        questionManger.updateAnswer(0);
                        onchange();
                      },
                      oneChoose: oneChoose,
                    ),
                    ChoosesView(
                      choose: questionModel.chooses[1],
                      isSelected: questionModel.select[1],
                      ontap: () {
                        questionManger.updateAnswer(1);
                        onchange();
                      },
                      oneChoose: oneChoose,
                    ),
                    ChoosesView(
                      choose: questionModel.chooses[2],
                      isSelected: questionModel.select[2],
                      ontap: () {
                        questionManger.updateAnswer(2);
                        onchange();
                      },
                      oneChoose: oneChoose,
                    ),
                    ChoosesView(
                      choose: questionModel.chooses[3],
                      isSelected: questionModel.select[3],
                      ontap: () {
                        questionManger.updateAnswer(3);
                        onchange();
                      },
                      oneChoose: oneChoose,
                    ),
                    Expanded(child: SizedBox()),
                    TransferButton(
                      questionManger: questionManger,
                      onchange: onchange,
                    ),
                    SizedBox(height: 55),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
