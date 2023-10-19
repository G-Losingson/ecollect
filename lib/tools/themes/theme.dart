import 'btnlight.theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_collect_app/tools/utils/utils.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Utils.tdBlack,
      secondary: Utils.tdBlueB,
      onSecondary: Utils.tdWhite,
      tertiary: Utils.tdBlack,
      error: Utils.tdRed,
      surface: Utils.tdWhite,
      onSurface: Utils.tdWhite,
      brightness: Brightness.light,
      background: Colors.transparent,
    ),
    outlinedButtonTheme: BtnLightTheme.outbtnlight,
    textButtonTheme: BtnLightTheme.txtbtnlight,
    floatingActionButtonTheme: BtnLightTheme.floatingbtnlight,
    iconTheme: const IconThemeData(
      color: Utils.tdWhite,
      size: 30,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poiretOne(
        color: Utils.tdWhite,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
      titleMedium: GoogleFonts.poiretOne(
        color: Utils.tdWhite,
        fontSize: 13,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        wordSpacing: 1.5,
        height: 1.5,
      ),
      bodySmall: GoogleFonts.poiretOne(
        color: Utils.tdWhite,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
      ),
    ),
  );
}
