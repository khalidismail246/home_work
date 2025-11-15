import 'package:app/models/question_model.dart';
import 'package:flutter/material.dart';

class CustomResultContainer extends StatelessWidget {
  const CustomResultContainer({super.key, required this.questionModel});
  final QuestionModel questionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(
              questionModel.question,
              style: TextStyle(color: Colors.deepPurple.shade900),
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withValues(alpha: .4),
              ),
              child: Text("Answer : ", style: TextStyle(color: Colors.black)),
            ),
            Row(
              spacing: 8,
              children: questionModel.answer
                  .map(
                    (answer) => Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurple.withValues(alpha: .8),
                      ),
                      child: Text(
                        answer,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
