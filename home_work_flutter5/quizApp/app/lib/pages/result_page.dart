import 'package:app/const/const_background_color.dart';
import 'package:app/models/Question_manger.dart';
import 'package:app/pages/start_page.dart';
import 'package:app/widgets/widget_result_page/custom_result_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.questionManger});
  final QuestionManger questionManger;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff060B26),
        title: Text(
          "Result Quiz",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ConstBackgroundColor(
        child: Column(
          spacing: 10,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: questionManger.question.length,
                itemBuilder: (context, index) {
                  return CustomResultContainer(
                    questionModel: questionManger.question[index],
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StartPage();
                    },
                  ),
                );
              },
              child: Text("Finsh Quiz , good bye 👋🎉 "),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
