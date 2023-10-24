import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../tools/utils/utils.dart';
import '../../../tools/utils/var.dart';
import '../../welcome/welcome.dart';
import '../thanks.dart';

class AlertDialogPage1 extends StatefulWidget {
  const AlertDialogPage1({super.key});

  @override
  State<AlertDialogPage1> createState() => _AlertDialogPage1State();
}

class _AlertDialogPage1State extends State<AlertDialogPage1> {

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    late dynamic num;
    return ValueListenableBuilder(
      valueListenable: code,
      builder: (context, value, _) {
        return AlertDialog(
          title: Text(
            'Entrer le code envoyer par le partenaire :',
            style: GoogleFonts.poiretOne(
              color: Utils.tdBlack,
              fontSize: 15,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
            ),
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
              onChanged: (value) {
                num = int.parse(value.trim());
              },
              onFieldSubmitted: (value) {
                num = int.parse(value.trim());
                if ((formKey.currentState!.validate()) && (num == code.value)) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()));
                }
                controller.clear();
                FocusScope.of(context).requestFocus(FocusNode());
              },
              onTapOutside: (event) =>
                  FocusScope.of(context).requestFocus(FocusNode()),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(
                    color: Utils.tdBlack,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                enabled: true,
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(
                    color: Utils.tdBlack,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                hintText: 'Taper le code ici',
                hintStyle: TextStyle(color: Utils.tdBlack),
              ),
              validator: (valeur) {
                if (valeur == null || valeur.isEmpty) {
                  return 'Veuillez entrer le code';
                } else if (num != code.value) {
                  controller.clear();
                  return 'Le code $num n\'est pas reconnu.\nVeuillez réessayer ou contacter votre\npartenaire.';
                }
                return null;
              },
            ),
          ),
          elevation: 0,
          backgroundColor: Utils.tdYellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide.none,
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThanksPage()),
                );
                FocusScope.of(context).requestFocus(FocusNode());
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                foregroundColor: MaterialStateProperty.all<Color>(Utils.tdRed),
              ),
              child: Text(
                'Pas de code',
                style: GoogleFonts.poiretOne(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if ((formKey.currentState!.validate()) && (num == code.value)) {
                  controller.clear();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()));
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
              child: const Text('Confirmer'),
            ),
          ],
        );
      },
    );
  }
}
