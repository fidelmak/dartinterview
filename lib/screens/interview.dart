import 'package:flutter/material.dart';

class interview extends StatefulWidget {
  const interview({super.key});

  @override
  State<interview> createState() => _interviewState();
}

class _interviewState extends State<interview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a stack ', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: TextButton(
          child: Text('go back to interview questions '),
          onPressed: () {
            Navigator.pop(context, '/home');
          },
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
