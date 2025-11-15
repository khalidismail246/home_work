import 'package:app/models/question_model.dart';

class QuestionManger {
  List<QuestionModel> questions = [
    QuestionModel(
      image: "assets/images/circleQ1.png",
      numberQuestion: 1,
      question:
          "How would you describe your level of satisfaction with the healthcare system?",
      choices: ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
      answer: {},
      oneChoice: true,
    ),
    QuestionModel(
      image: "assets/images/circleQ2.png",
      numberQuestion: 2,
      question:
          "How would you rate the quality of healthcare services in your country?",
      choices: ["Excellent", "Good", "Fair", "Poor"],
      answer: {},
      oneChoice: true,
    ),
    QuestionModel(
      image: "assets/images/circleQ3.png",
      numberQuestion: 3,
      question: "What vitamins do you take?",
      choices: ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
      answer: {},
      oneChoice: false,
    ),
    QuestionModel(
      image: "assets/images/circleQ4.png",
      numberQuestion: 4,
      question: "What supplements do you usually take ?",
      choices: [
        "Fish oil / Omega-3",
        "Protein powder",
        "Herbal supplements",
        "Multivitamins",
      ],
      answer: {},
      oneChoice: false,
    ),
  ];
  void updateAnswer({required QuestionModel question, required String answer}) {
    if (question.oneChoice) {
      question.answer.clear();
      question.answer.add(answer);
    } else {
      question.answer.add(answer);
    }
  }
}
