import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../tools/utils/utils.dart';
import '../../../../tools/utils/var.dart';

class VirementAirtel extends StatelessWidget {
  const VirementAirtel({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return AlertDialog(
      backgroundColor: Utils.tdYellow,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder(
            valueListenable: airtel,
            builder: (context, value, _) {
              return Text(
                'Vous êtes sur le point de virer de l\'argent de votre compte AirtelMoney : ${airtel.value}',
                style: GoogleFonts.poiretOne(
                  color: Utils.tdBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: nomcompte,
            builder: (context, value, _) {
              return Text(
                'Vers celui de l\'Equity de ${nomcompte.value}',
                style: GoogleFonts.poiretOne(
                  color: Utils.tdBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              );
            },
          ),
        ],
      ),
      content: Form(
        key: formKey,
        child: TextFormField(
          cursorColor: Utils.tdBlack,
          keyboardType: TextInputType.number,
          style: GoogleFonts.poiretOne(
            color: Utils.tdBlack,
            fontSize: 10,
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
          onChanged: (valeur) => controller = valeur,
          onEditingComplete: () =>
              FocusScope.of(context).requestFocus(FocusNode()),
          onFieldSubmitted: (value) =>
              FocusScope.of(context).requestFocus(FocusNode()),
          onTapOutside: (event) =>
              FocusScope.of(context).requestFocus(FocusNode()),
          decoration: const InputDecoration(
            enabled: true,
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(
                color: Utils.tdBlack,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(
                color: Utils.tdBlack,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
          ),
          validator: (valeur) {
            if (valeur == null || valeur.isEmpty) {
              return 'Veuillez choisir une option';
            }
            return null;
          },
        ),
      ),
    );
  }
}
