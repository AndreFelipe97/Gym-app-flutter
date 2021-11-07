import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get subtitle;
  TextStyle get button;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
      color: AppTheme.colors.button, fontSize: 16, fontWeight: FontWeight.w400);

  @override
  TextStyle get title => GoogleFonts.roboto(
      color: AppTheme.colors.fontColorOrange,
      fontSize: 40,
      fontWeight: FontWeight.w700);

  @override
  @override
  TextStyle get subtitle => GoogleFonts.roboto(
      color: AppTheme.colors.fontColorOrange,
      fontSize: 20,
      fontWeight: FontWeight.w400);
}
