import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CardExercise extends StatelessWidget {
  final String exercise;
  final String repetition;

  CardExercise(this.exercise, this.repetition);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.colors.backgroundCard,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(exercise,
                style:
                    GoogleFonts.inter(color: AppTheme.colors.fontColorOrange)),
            Text(repetition,
                style:
                    GoogleFonts.inter(color: AppTheme.colors.fontColorOrange)),
          ],
        ),
      ),
    );
  }
}
