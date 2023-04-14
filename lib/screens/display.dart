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
  String correctAnswer = tquestion.getQuestinAnswer().toString();
  String choice = tquestion.getChoicer().toString();
  String first = tquestion.first().toString();
  String second = tquestion.second().toString();

  void CheckAnswer(String userPickedAnswer) {
    int mark = tquestion.total;
    String des;
    if (score < 6) {
      des = "You Failed";
    } else {
      des = "You Passed";
    }
    ;

    if (userPickedAnswer == correctAnswer) {
      setState(() {
        score++;
      });
    }

    setState(() {
      tquestion.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            // Expanded(
            //   child: Padding(
            //     padding: EdgeInsets.all(15.0),
            //     child: TextButton(
            //       onPressed: () {
            //         CheckAnswer(choice);
            //       },
            //       style: TextButton.styleFrom(
            //           foregroundColor: Colors.white,
            //           padding: const EdgeInsets.all(16.0),
            //           textStyle: const TextStyle(fontSize: 20),
            //           backgroundColor: Colors.green),
            //       child: Text(first),
            //     ),
            //   ),
            // ),
            SizedBox(height: 16.0),
            // Display the answer options
            ...tquestion
                .getChoicer()
                .map((choice) => ElevatedButton(
                      child: Text(choice),
                      onPressed: () => CheckAnswer(choice),
                    ))
                .toList(),

            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
