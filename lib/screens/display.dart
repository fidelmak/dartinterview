import 'package:flutter/material.dart';
import 'package:dartinterview/model/questions.dart';

class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _displayState();
}

Questions tquestion = Questions();

class _displayState extends State<display> {
  List<Widget> ScoreKeeper = [];
  int score = 0;
  void CheckAnswer(String userPickedAnswer) {
    String correctAnswer = tquestion.getQuestinAnswer().toString();
    int mark = tquestion.total;
    String des;
    if (score < 6) {
      des = "You Failed";
    } else {
      des = "You Passed";
    }
    ;
    setState(() {
      tquestion.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    tquestion.getQuestionBank().toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.0, color: Color.fromARGB(255, 65, 0, 35)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
