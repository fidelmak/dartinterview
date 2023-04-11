import 'package:flutter/material.dart';

class display extends StatefulWidget {
  const display({super.key});

  @override
  State<display> createState() => _displayState();
}

class _displayState extends State<display> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        " Practice answering common interview questions ",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromARGB(122, 172, 66, 122),
          fontFamily: 'SourceSansPro - Regular',
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
