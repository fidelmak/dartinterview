import 'package:flutter/material.dart';

import 'widgets/slider.dart';

class interview extends StatefulWidget {
  const interview({super.key});

  @override
  State<interview> createState() => _interviewState();
}

class _interviewState extends State<interview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            icon: Icon(Icons.menu_book_rounded),
          )
        ],
        title: Text('DartInterview ', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade900,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            children: [
              slider(),
              SizedBox(height: 5),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.pink.shade900,
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 200,
                child: Text(
                  " Practice answering common interview questions ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 138, 2, 74),
                    fontFamily: 'SourceSansPro - Regular',
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  child: Text('Start the process here ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SourceSansPro - Regular')),
                  onPressed: () {
                    Navigator.pushNamed(context, '/questions');
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      // ) Column(
      //   children: [
      //     Center(child: Text("interview")),
      //   ],
      //
    );
  }
}
