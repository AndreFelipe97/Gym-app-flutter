import 'package:flutter/material.dart';
import 'package:gym/theme/app_theme.dart';

class AppBarWidgetsComponents extends AppBar {
  final String titleText;
  @override
  AppBarWidgetsComponents({required this.titleText})
      : super(
          backgroundColor: AppTheme.colors.topBar,
          title: Text(
            titleText,
            style:
                TextStyle(color: AppTheme.colors.fontColorOrange, fontSize: 18),
          ),
          centerTitle: true,
        );
}
