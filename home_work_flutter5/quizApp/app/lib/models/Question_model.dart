class QuestionModel {
  final String image;
  final String text;
  final int numberQuestion;
  final List<String> chooses;
  final List<String> answer;
  final List<bool> select;
  final bool isOnechoose;

  QuestionModel({
    required this.numberQuestion,
    required this.image,
    required this.text,
    required this.chooses,
    required this.answer,
    required this.isOnechoose,
    required this.select,
  });
}
