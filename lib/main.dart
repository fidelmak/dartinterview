import 'package:flutter/material.dart';
import './screens/homepage.dart';
import './screens/interview.dart';

void main() => runApp(dartinterview());

class dartinterview extends StatelessWidget {
  dartinterview({super.key});

  final myFonts = ThemeData.dark().textTheme.copyWith(
        headline1: TextStyle(fontFamily: 'Pacifico'),
        headline2: TextStyle(fontFamily: 'SourceSansPro-Regular'),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dartinterview',
      theme: ThemeData(
        textTheme: myFonts,
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
