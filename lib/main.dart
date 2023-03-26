import 'package:flutter/material.dart';
import './screens/homepage.dart';
import './screens/interview.dart';

void main() => runApp(dartinterview());

class dartinterview extends StatelessWidget {
  const dartinterview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dartinterview',
      theme: ThemeData(
        fontFamily: 'Pacifico',
      ),
      initialRoute: '/',
      routes: routes,
      home: home(),
    );
  }
}

Map<String, WidgetBuilder> routes = {
  '/home': (BuildContext context) => home(),
  //'/home2': (BuildContext context) => home(),
  '/interview': (BuildContext context) => interview(),
};
