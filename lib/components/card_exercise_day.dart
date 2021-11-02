import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/models/exercise_model.dart';
import 'package:gym/theme/app_theme.dart';

class CardExerciseDay extends StatelessWidget {
  final String title;
  final List<ExerciseModel> execise;

  CardExerciseDay(
    this.title,
    this.execise,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.colors.backgroundCard,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.pushNamed(context, "/exercise", arguments: execise);
        },
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
              child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: AppTheme.colors.fontColorOrange,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
