import 'package:flutter/material.dart';

abstract class AppColors {
  Color get topBar;
  Color get background;
  Color get fontColorWhite;
  Color get fontColorOrange;
  Color get backgroundCard;
}

class AppColorDefault implements AppColors {
  @override
  Color get background => Color(0xFF312E38);

  @override
  Color get topBar => Color(0xFF28262E);

  @override
  Color get fontColorWhite => Color(0xFFFFFFFF);

  @override
  Color get fontColorOrange => Color(0xFFFF9000);

  @override
  Color get backgroundCard => Color(0xFF3E3B47);
}
