import 'package:flutter/material.dart';
import 'package:gym/components/app_bar_widgets_componets.dart';
import 'package:gym/components/card_exercise_day.dart';
import 'package:gym/components/drawer_componet.dart';
import 'package:gym/models/exercise_model.dart';
import 'package:gym/models/users_model.dart';
import 'package:gym/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  final List<ExerciseModel> trainingA = [
    ExerciseModel("Barra fixa graviton", "3 x falha"),
    ExerciseModel("Puxado frente pp", "4 x 10 (lento)"),
    ExerciseModel("Puxador frente triangulo", "4 x 10"),
    ExerciseModel("Remada articulada unilateral", "4 x 10"),
    ExerciseModel("Remada cavalo", "4 x 10"),
    ExerciseModel("Rocas inversa", "3 x 15"),
    ExerciseModel("Rosca 21", "3x"),
    ExerciseModel("Rosca alternada", "4 x 12"),
    ExerciseModel("Supra", "4 x 10"),
    ExerciseModel("Ponte", "4 x até 1 minuto"),
    ExerciseModel("Remo", "4 x 10")
  ];

  final List<ExerciseModel> trainingB = [
    ExerciseModel("Supino reto halteres + barra", "4 x 8 + 8"),
    ExerciseModel("Supino inclinado", "4 x 15"),
    ExerciseModel("Peck deck 2 tempos", "4 x 8"),
    ExerciseModel("Cros over + apoio f.", "4 x 10 + falha"),
    ExerciseModel("Desenvolvimento ombro", "4 x 15"),
    ExerciseModel("Abdução ombro", "4 x 15"),
    ExerciseModel("Triceps pulley + inverso", "4 x 8 + falha"),
    ExerciseModel("Triceps francês", "4 x 8"),
    ExerciseModel("Triceps testa", "4 x 10"),
    ExerciseModel("Flexão plantar em pé", "4 x falha"),
    ExerciseModel("Flexão plantar em sentado", "4 x falha")
  ];

  final List<ExerciseModel> trainingC = [
    ExerciseModel("Agachamento livre", "3 x 15"),
    ExerciseModel("Passada", "4 voltas"),
    ExerciseModel("Leg 45 agachamento sem carga", "4 x 10 + 15"),
    ExerciseModel("Hack articualar", "4 x 8(amplitude maxima)"),
    ExerciseModel("Cadeira extensora", "4 x 10 + 1 drop(6 / 8 / 10)"),
    ExerciseModel("Cadeira adutora", "3 x 10"),
    ExerciseModel("Supra", "4 x 10"),
    ExerciseModel("Ponte", "4 x até 1 minuto"),
    ExerciseModel("Remo", "4 x 10")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DraweComponent(),
      appBar: AppBarWidgetsComponents(
        titleText: "Home",
      ),
      body: Container(
        decoration: BoxDecoration(color: AppTheme.colors.background),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardExerciseDay('Treino A', trainingA),
              CardExerciseDay('Treino B', trainingB),
              CardExerciseDay('Treino C', trainingC),
            ],
          ),
        ),
      ),
    );
  }
}
