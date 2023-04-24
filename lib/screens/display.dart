import 'package:flutter/material.dart';
import 'package:dartinterview/model/questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
      if (tquestion.isFinished() == true) {
        Alert(
          style: AlertStyle(
              descStyle: TextStyle(
                color: Colors.pink.shade900,
              ),
              titleStyle: TextStyle(
                color: Colors.pink.shade900,
              ) // change desc text color here
              ),
          context: context,
          title: " $des",
          desc: "Your Score is : $score / $mark,",
          buttons: [
            DialogButton(
              child: Text(
                "Try Again",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              color: Colors.pink.shade900,
              radius: BorderRadius.circular(0.0),
            ),
          ],
        ).show();

        //Navigator.pushNamed(context, '/home');
        tquestion.reset();
        // ScoreKeeper = [];
      }

      tquestion.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: Icon(Icons.home),
          )
        ],
        title: Text('DartInterview ', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade900,
        elevation: 0.0,
      ),
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

            // Display the answer options
            ...tquestion
                .getChoicer()
                .map((choice) => Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextButton(
                        onPressed: () => CheckAnswer(choice),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(8.0),
                          textStyle: const TextStyle(fontSize: 20),
                          backgroundColor: Colors.pink.shade900,
                        ),
                        child: Text(choice),
                      ),
                    )))
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
