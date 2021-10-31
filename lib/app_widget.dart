import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/exercise_page.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym',
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        "/": (context) => HomePage(),
        "/exercise": (context) => ExercisePage(),
      },
    );
  }
}
