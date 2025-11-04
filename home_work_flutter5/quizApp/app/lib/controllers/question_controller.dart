import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionController extends ChangeNotifier {
  int _currentQuestionIndex = 0;
  final List<Question> _questions = [
    Question(
      text:
          'How would you describe your level of satisfaction with the healthcare system?',
      options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
      questionNumber: 1,
    ),
    Question(
      text: 'What vitamins do you take?',
      options: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
      questionNumber: 2,
    ),
    // Add more questions here
  ];

  Question get currentQuestion => _questions[_currentQuestionIndex];
  bool get isFirstQuestion => _currentQuestionIndex == 0;
  bool get isLastQuestion => _currentQuestionIndex == _questions.length - 1;
  int get totalQuestions => _questions.length;
  int get currentQuestionNumber => _currentQuestionIndex + 1;

  void selectAnswer(String answer) {
    _questions[_currentQuestionIndex].selectedAnswer = answer;
    notifyListeners();
  }

  void nextQuestion() {
    if (!isLastQuestion) {
      _currentQuestionIndex++;
      notifyListeners();
    }
  }

  void previousQuestion() {
    if (!isFirstQuestion) {
      _currentQuestionIndex--;
      notifyListeners();
    }
  }

  List<String> getAnswers() {
    return _questions.map((q) => q.selectedAnswer ?? '').toList();
  }
}
