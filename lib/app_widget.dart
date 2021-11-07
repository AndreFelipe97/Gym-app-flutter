import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/pages/home_page.dart';
import 'package:gym/pages/exercise_page.dart';
import 'package:gym/pages/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym',
      home: HomePage(),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/exercise": (context) => ExercisePage(),
      },
    );
  }
}
