import 'dart:io';
import 'questionModel.dart';

class Questions {
  int _questionNumber = 0;

  final List<Question> questions = [
    Question(
        questionText: "What is Dart?",
        choice: [
          'Dart is a object-oriented programming language',
          'Dart is used to create a frontend user interfaces',
          'Both of the above'
        ],
        questionAnswer: 'paul'),
    Question(
        questionText: "who killed paul?",
        choice: ['mhn', 'hjh'],
        questionAnswer: 'ben'),
    Question(
        questionText: "who killed john?",
        choice: ['paul', 'ben', 'roger'],
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

  String first() {
    var mainn = questions[_questionNumber].choice;
    return mainn[0];
  }

  String second() {
    var mainn = questions[_questionNumber].choice;
    return mainn[1];
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
    _questionNumber = -1;
  }
}
