class QuestionModel {
  final String question;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;
  String? selectedAnswer;

  List<String> get answers => [answer1, answer2, answer3, answer4];

  QuestionModel({
    required this.question,
    required this.answer1,
    required this.answer2,
    required this.answer3,
    required this.answer4,
    this.selectedAnswer,
  });
}
