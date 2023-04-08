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
}
