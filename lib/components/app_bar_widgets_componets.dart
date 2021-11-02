import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/theme/app_theme.dart';

class AppBarWidgetsComponents extends AppBar {
  final String titleText;
  @override
  AppBarWidgetsComponents({required this.titleText})
      : super(
          backgroundColor: AppTheme.colors.topBar,
          title: Text(
            titleText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.fontColorOrange, fontSize: 25),
          ),
          centerTitle: true,
        );
}
