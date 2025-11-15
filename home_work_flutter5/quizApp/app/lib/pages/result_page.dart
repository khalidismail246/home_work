import 'package:app/models/question_manger.dart';
import 'package:app/pages/start_pages.dart';
import 'package:app/theme/app_decoration.dart';
import 'package:app/widgets/result_page_widgets.dart/custom_result_container.dart';
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecoration.mainBackgroundDecoration,
        child: Column(
          spacing: 10,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: questionManger.questions.length,
                itemBuilder: (context, index) {
                  return CustomResultContainer(
                    questionModel: questionManger.questions[index],
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
                      return StartPages();
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
