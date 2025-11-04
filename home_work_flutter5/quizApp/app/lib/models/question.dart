class Question {
  final String text;
  final List<String> options;
  String? selectedAnswer;
  final int questionNumber;

  Question({
    required this.text,
    required this.options,
    this.selectedAnswer,
    required this.questionNumber,
  });
}
