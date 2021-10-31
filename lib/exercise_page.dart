import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/exercise_model.dart';

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
        appBar: AppBar(
          title: Text('Execícios'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < execise.length; i++)
                Card(
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(execise[i].exercise),
                        Text(execise[i].repetition),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
