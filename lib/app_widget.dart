import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/pages/home_page.dart';
import 'package:gym/pages/exercise_page.dart';
import 'package:gym/pages/physical_assessment.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym',
      routes: {
        "/": (context) => HomePage(),
        "/exercise": (context) => ExercisePage(),
        "/physical-assessment": (context) => PhysicalAssessmentPage(),
      },
    );
  }
}
