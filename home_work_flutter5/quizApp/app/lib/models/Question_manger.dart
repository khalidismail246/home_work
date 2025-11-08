import 'package:app/models/Question_model.dart';

class QuestionManger {
  int isnumberQuestion = 0;
  List<QuestionModel> question = [
    QuestionModel(
      select: [false, false, false, false],
      numberQuestion: 1,
      image: "assets/images/circleQ1.png",
      text:
          "How would you describe your level of satisfaction with the healthcare system?",
      chooses: ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
      answer: [],
      isOnechoose: true,
    ),
    QuestionModel(
      select: [false, false, false, false],
      numberQuestion: 2,
      image: "assets/images/circleQ2.png",
      text:
          "How would you rate the quality of healthcare services in your country?",
      chooses: ["Excellent", "Good", "Fair", "Poor"],
      answer: [],
      isOnechoose: true,
    ),
    QuestionModel(
      select: [false, false, false, false],
      numberQuestion: 3,
      image: "assets/images/circleQ3.png",
      text: "What vitamins do you take?",
      chooses: ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
      answer: [],
      isOnechoose: false,
    ),
    QuestionModel(
      select: [false, false, false, false],
      numberQuestion: 4,
      image: "assets/images/circleQ4.png",
      text: "What supplements do you usually take ?",
      chooses: [
        "Fish oil / Omega-3",
        "Protein powder",
        "Herbal supplements",
        "Multivitamins",
      ],
      answer: [],
      isOnechoose: false,
    ),
  ];
  void next() {
    isnumberQuestion++;
  }

  void back() {
    isnumberQuestion--;
  }

  void updateAnswer(int index) {
    QuestionModel current = question[isnumberQuestion];

    if (current.isOnechoose) {
      // one choose
      for (int i = 0; i < current.select.length; i++) {
        current.select[i] = false;
      }
      current.select[index] = true;
      if (current.answer.isEmpty) {
        current.answer.add(current.chooses[index]);
      } else {
        current.answer.clear();
        current.answer.add(current.chooses[index]);
      }
    } else {
      //multi choose
      current.select[index] = !current.select[index];
      if (current.select[index] == true) {
        current.answer.add(current.chooses[index]);
      } else {
        current.answer.remove(current.chooses[index]);
      }
    }
  }
}
