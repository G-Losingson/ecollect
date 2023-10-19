import 'choixcmptA.dart';
import '../btn/txtbtn.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../../../../tools/utils/var.dart';
import '../../../../tools/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class VirementAirtel extends StatefulWidget {
  const VirementAirtel({super.key});

  @override
  State<VirementAirtel> createState() => _VirementAirtelState();
}

class _VirementAirtelState extends State<VirementAirtel> {
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ValueListenableBuilder(
            valueListenable: nomcompte,
            builder: (context, value, _) {
              return Text(
                'Bienvenu.e en ce processus de virement vers le compte ${nomcompte.value}\nVeuillez entrez votre numéro AirtelMoney :',
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
          controller: controller,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
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
              airtel.value = num;
              showDialog(
                context: context,
                builder: (_) => const ChoixCmptA(),
                barrierDismissible: true,
              );
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
            prefixText: '+243',
          ),
          validator: (valeur) {
            if (valeur == null || valeur.isEmpty) {
              return 'Veuillez entrer le numéro';
            }
            return null;
          },
        ),
      ),
      actions: [
        const TxtBtn(),
        ValueListenableBuilder(
          valueListenable: airtel,
          builder: (context, value, _) {
            return ElevatedButton(
              onPressed: () {
                if ((formKey.currentState!.validate())) {
                  controller.clear();
                  airtel.value = num;
                  showDialog(
                    context: context,
                    builder: (_) => const ChoixCmptA(),
                    barrierDismissible: true,
                  );
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
