import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../tools/utils/utils.dart';
import '../../../../tools/utils/var.dart';
import '../btn/txtbtn.dart';
import 'montantA.dart';

class ChoixCmptA extends StatelessWidget {
  const ChoixCmptA({super.key});

  @override
  Widget build(BuildContext context) {
    late int num;
    final formKey = GlobalKey<FormState>();
    return AlertDialog(
      backgroundColor: Utils.tdYellow,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 100,
      ),
      title: ValueListenableBuilder(
        valueListenable: airtel,
        builder: (context, value, _) {
          return Text(
            'Le numéro entré est le ${airtel.value}\nChoisissez un compte\n1. USD\n2. CDF',
            style: GoogleFonts.poiretOne(
              color: Utils.tdBlack,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
            ),
          );
        },
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
          onTap: () {
            controller.clear();
          },
          onChanged: (text) {
            num = int.parse(text.trim());
          },
          onTapOutside: (event) =>
              FocusScope.of(context).requestFocus(FocusNode()),
          onFieldSubmitted: (value) {
            if ((formKey.currentState!.validate())) {
              if (num == 1) {
                nature.value = 'USD';
                showDialog(
                  context: context,
                  builder: (_) => const MontantA(),
                  barrierDismissible: true,
                );
              } else if (num == 2) {
                nature.value = 'CDF';
                showDialog(
                  context: context,
                  builder: (_) => const MontantA(),
                  barrierDismissible: true,
                );
              }
            }
            FocusScope.of(context).requestFocus(FocusNode());
          },
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
      actions: [
        const TxtBtn(),
        ValueListenableBuilder(
          valueListenable: nature,
          builder: (context, value, _) {
            return ElevatedButton(
              onPressed: () {
                controller.clear();
                if ((formKey.currentState!.validate())) {
                  if (num == 1) {
                    nature.value = 'USD';
                    showDialog(
                      context: context,
                      builder: (_) => const MontantA(),
                      barrierDismissible: true,
                    );
                  } else if (num == 2) {
                    nature.value = 'CDF';
                    showDialog(
                      context: context,
                      builder: (_) => const MontantA(),
                      barrierDismissible: true,
                    );
                  }
                }
                FocusScope.of(context).requestFocus(FocusNode());
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Utils.tdWhiteO),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Utils.tdBlack),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.poiretOne(
                    color: Utils.tdBlack,
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              child: const Text('Suivant'),
            );
          },
        ),
      ],
    );
  }
}
