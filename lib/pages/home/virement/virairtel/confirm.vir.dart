import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../tools/utils/utils.dart';
import '../../../../tools/utils/var.dart';
import '../btn/txtbtn.dart';
import '../thx.dart';

class ConfirmA extends StatelessWidget {
  const ConfirmA({super.key});

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
            valueListenable: montant,
            builder: (context, value, _) {
              return Text(
                'Vous êtes sur le point de virer ${montant.value} ${nature.value} vers le compte de ${nomcompte.value}.',
                style: GoogleFonts.poiretOne(
                  color: Utils.tdBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              );
            },
          ),
          vertical(20),
          Text(
            'Entrer 1 pour confirmer le virement :',
            style: GoogleFonts.poiretOne(
              color: Utils.tdBlack,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
            ),
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
          onTap: () {
            controller.clear();
          },
          onChanged: (text) {
            num = int.parse(text.trim());
          },
          onTapOutside: (event) =>
              FocusScope.of(context).requestFocus(FocusNode()),
          onFieldSubmitted: (value) {
            if ((formKey.currentState!.validate()) && (num == 1)) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThxPage(),
                ),
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
          ),
          validator: (valeur) {
            if (valeur == null || valeur.isEmpty) {
              return 'Merci de confirmer le virement!';
            } else if (num != 1) {
              controller.clear();
              return 'Merci de taper 1 pour confirmer le virement';
            }
            return null;
          },
        ),
      ),
      actions: [
        const TxtBtn(),
        ValueListenableBuilder(
          valueListenable: montant,
          builder: (context, value, _) {
            return ElevatedButton(
              onPressed: () {
                if ((formKey.currentState!.validate()) && (num == 1)) {
                  controller.clear();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThxPage(),
                    ),
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
              child: const Text('Virer'),
            );
          },
        ),
      ],
    );
  }
}
