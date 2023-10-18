import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/utils.dart';

Widget logotrans() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(
      top: 45,
      left: 30,
      bottom: 15,
    ),
    color: Colors.transparent,
    height: 120,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: Utils.ecollectlogo),
        horizontal(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedTextKit(
              totalRepeatCount: 1,
              repeatForever: false,
              animatedTexts: [
                TyperAnimatedText(
                  'eCollect',
                  textStyle: GoogleFonts.poiretOne(
                    color: Utils.tdWhite,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
            ),
            AnimatedTextKit(
                totalRepeatCount: 1,
                repeatForever: false,
                animatedTexts: [
                  TyperAnimatedText(
                    'Pour vos collectes de fonds sûres, rapides et\nde partout où vous êtes.',
                    textStyle: GoogleFonts.poiretOne(
                      color: Utils.tdWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
              ),
          ],
        ),
      ],
    ),
  );
}
