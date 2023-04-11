import 'dart:io';
import 'questionModel.dart';

class Questions {
  int _questionNumber = 0;

  final List<Question> questions = [
    Question(
        questionText: "who killed James?",
        choice: ['paul', 'ben'],
        questionAnswer: 'ben'),
    Question(
        questionText: "who killed James?",
        choice: ['paul', 'ben'],
        questionAnswer: 'ben'),
    Question(
        questionText: "who killed James?",
        choice: ['paul', 'ben'],
        questionAnswer: 'ben'),
  ];

  int get total => questions.length;

  void nextQuestion() {
    if (_questionNumber < questions.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionBank() {
    return questions[_questionNumber].questionText;
  }

  String? getQuestinAnswer() {
    return questions[_questionNumber].questionAnswer;
  }

  List<String> getChoicer() {
    return questions[_questionNumber].choice;
  }

  bool isFinished() {
    if (_questionNumber >= questions.length - 1) {
      print('Now returning true');

      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
