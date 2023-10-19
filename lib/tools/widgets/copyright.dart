import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

Widget copyright() {
  return Text(
    'Copyright©Losingson23\nPowered by Flutter',
    style: GoogleFonts.poiretOne(
      color: Utils.tdWhite,
      fontSize: 10,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      wordSpacing: 1.5,
      height: 1.5,
    ),
    textAlign: TextAlign.center,
  );
}
