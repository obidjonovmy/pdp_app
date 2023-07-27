import 'package:flutter/material.dart';
import 'package:pdp_app/screens/first_screen.dart';
import 'package:pdp_app/screens/subjects_screen.dart';
import 'package:pdp_app/screens/events_screen.dart';

void main() {
  runApp(MyUniversityApp());
}

class MyUniversityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PDP University',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/subjects': (context) => SubjectsScreen(),
        '/events': (context) => EventsScreen(),
      },
    );
  }
}
