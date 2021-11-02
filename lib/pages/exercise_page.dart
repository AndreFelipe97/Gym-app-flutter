import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/components/app_bar_widgets_componets.dart';
import 'package:gym/components/card_exercise.dart';
import 'package:gym/components/stopwatch_component.dart';
import 'package:gym/models/exercise_model.dart';
import 'package:gym/theme/app_theme.dart';

class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  List<ExerciseModel> execise = [];

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        execise =
            ModalRoute.of(context)!.settings.arguments as List<ExerciseModel>;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetsComponents(titleText: "Exercícios"),
      body: Container(
        decoration: BoxDecoration(color: AppTheme.colors.background),
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(color: AppTheme.colors.background),
                  height: 120,
                  child: StopwatchComponent()),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 492,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (var i = 0; i < execise.length; i++)
                        CardExercise(
                            execise[i].exercise, execise[i].repetition),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
