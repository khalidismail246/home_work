import 'package:app/models/question_manger.dart';
import 'package:app/theme/app_decoration.dart';
import 'package:app/widgets/question_page_widgets/back_action_button.dart';
import 'package:app/widgets/question_page_widgets/next_action_button.dart';
import 'package:app/widgets/question_page_widgets/question_item.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuestionManger questionManger = QuestionManger();
  PageController pageController = PageController();
  int pageIndex = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecoration.mainBackgroundDecoration,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/GRADINET.png",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (index) {
                      pageIndex = index;
                      setState(() {});
                    },
                    controller: pageController,
                    itemCount: questionManger.questions.length,
                    itemBuilder: (context, index) {
                      return QuestionItem(
                        questionModel: questionManger.questions[index],
                        questionManger: questionManger,
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Visibility(
                        visible: pageIndex != 0,
                        child: BackActionButton(pageController: pageController),
                      ),
                      Spacer(),
                      NextActionButton(
                        pageController: pageController,
                        pagecount: questionManger.questions.length,
                        questionManger: questionManger,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
