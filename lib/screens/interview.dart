import 'package:flutter/material.dart';

import './widgets.dart/slider.dart';

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
        title: Text('Choose a stack ', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink.shade900,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120.0),
          child: Column(
            children: [
              slider(),
              Text(
                "WELCOME",
                style: TextStyle(
                    color: Colors.pink.shade900,
                    fontFamily: 'SourceSansPro - Regular'),
              ),
              Container(
                width: 200,
                child: Text(
                  " Practice answering common interview questions ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontFamily: 'SourceSansPro - Regular'),
                ),
              ),
              Container(
                width: 200,
                child: TextButton(
                  child: Text('Start',
                      style: TextStyle(
                          backgroundColor: Colors.pink.shade900,
                          color: Colors.white,
                          fontFamily: 'SourceSansPro - Regular')),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
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
