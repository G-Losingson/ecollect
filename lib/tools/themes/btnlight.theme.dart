import 'package:e_collect_app/tools/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnLightTheme {
  static OutlinedButtonThemeData outbtnlight = OutlinedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(Utils.tdYellow),
      foregroundColor: MaterialStateProperty.all<Color>(Utils.tdBlack),
      iconColor: MaterialStateProperty.all<Color>(Utils.tdBlack),
      iconSize: MaterialStateProperty.all(20),
      textStyle: MaterialStateProperty.all<TextStyle>(
        GoogleFonts.poiretOne(
          color: Utils.tdBlack,
          fontSize: 15,
          fontWeight: FontWeight.w900,
          letterSpacing: 1.5,
        ),
      ),
      shape: MaterialStateProperty.all(const StadiumBorder(side: BorderSide.none)),
      minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
    ),
  );

  static TextButtonThemeData txtbtnlight = TextButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      foregroundColor: MaterialStateProperty.all<Color>(Utils.tdRed),
    ),
  );

  static FloatingActionButtonThemeData floatingbtnlight =
      const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: Utils.tdBlueO,
    foregroundColor: Utils.tdBlueB,
    hoverColor: Utils.tdBlueO,
    iconSize: 20,
    focusColor: Utils.tdBlueB,
  );
}
