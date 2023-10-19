import 'package:e_collect_app/tools/utils/var.dart';
import 'package:flutter/material.dart';
import '../../../../tools/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class TxtBtn extends StatefulWidget {
  const TxtBtn({super.key});

  @override
  State<TxtBtn> createState() => _TxtBtnState();
}

class _TxtBtnState extends State<TxtBtn> {
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        controller.clear();
        Navigator.pop(context);
        FocusScope.of(context).requestFocus(FocusNode());
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(Utils.tdBlack),
      ),
      child: Text(
        'Retour',
        style: GoogleFonts.poiretOne(
          fontSize: 10,
          fontWeight: FontWeight.w900,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
