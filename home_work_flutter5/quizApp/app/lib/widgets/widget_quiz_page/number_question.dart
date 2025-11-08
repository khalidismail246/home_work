import 'package:app/models/Question_model.dart';
import 'package:flutter/material.dart';

class NumberQuesetion extends StatelessWidget {
  const NumberQuesetion({super.key, required this.questionModel});
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF8D83FF),
          borderRadius: BorderRadius.circular(100),
          border: BoxBorder.all(width: 1, color: Color(0xFFB8B2FF)),
        ),
        child: Row(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(questionModel.image, height: 14, width: 14),

            Text(
              "Question ${questionModel.numberQuestion}",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Gilroy",
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
