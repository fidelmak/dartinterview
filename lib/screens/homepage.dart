import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dartinterview'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/interview');
              // MaterialPageRoute(builder: (context) => home()),
            },
            child: Text("Go to Interview questions  ")),
      ),
    );
    //   home: Column(
    //     children: [
    //       Center(child: Text("welcome")),
    //     ],
    //   ),
    // );
  }
}
