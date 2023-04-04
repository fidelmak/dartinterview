import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class interview extends StatefulWidget {
  const interview({super.key});

  @override
  State<interview> createState() => _interviewState();
}

class _interviewState extends State<interview> {
  @override
  Widget build(BuildContext context) {
    final List images = [
      'images/sus1.svg',
      'images/sus2.svg',
      'images/sus3.svg',
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Choose a stack ', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              child: PageView.builder(
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return SvgPicture.asset(
                    images[index],
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
            TextButton(
              child: Text('go back to interview questions '),
              onPressed: () {
                Navigator.pop(context, '/home');
              },
            ),
          ],
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
