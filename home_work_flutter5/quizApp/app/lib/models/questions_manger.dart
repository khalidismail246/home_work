import 'package:app/models/Question_model.dart';

class QuestionsManger {
  List<QuestionModel> quistion = [
    QuestionModel(
      question:
          "How would you describe your level of satisfaction with the healthcare system?",
      answer1: "Strongly satisified",
      answer2: "Satisified",
      answer3: "Neutral",
      answer4: "Not Satisfied",
    ),
    QuestionModel(
      question:
          "How would you rate your experience with hospitals and clinics in your country?",
      answer1: "Excellent",
      answer2: "Good",
      answer3: "Average",
      answer4: "Poor",
    ),
    QuestionModel(
      question: "What vitamins do you take?",
      answer1: "Vitamin D3",
      answer2: "Vitamin B",
      answer3: "Zinc",
      answer4: "Magnesium",
    ),

    QuestionModel(
      question: "How often do you take vitamin supplements?",
      answer1: "Daily",
      answer2: "A few times a week",
      answer3: "Occasionally",
      answer4: "Never",
    ),
  ];
}
