class QuestionModel {
  final String image;
  final int numberQuestion;
  final String question;
  final List<String> choices;
  final bool oneChoice;
  final Set<String> answer;

  QuestionModel({
    required this.image,
    required this.numberQuestion,
    required this.question,
    required this.choices,
    required this.oneChoice,
    required this.answer,
  });
}
