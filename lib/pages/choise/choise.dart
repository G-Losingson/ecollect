import 'package:e_collect_app/tools/widgets/copyright.dart';

import 'alertdonateur/alertdialog1.dart';
import 'alertorganistateur/alertdialog2.dart';
import 'package:flutter/material.dart';
import '../../tools/utils/utils.dart';
import '../../tools/widgets/logotrans.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_collect_app/tools/widgets/space.dart';

class ChoisePage extends StatelessWidget {
  const ChoisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: Utils.background,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logotrans(),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                top: 120,
                left: 50,
                right: 50,
                bottom: 220,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Vous joignez en tant que :',
                    style: GoogleFonts.poiretOne(
                      color: Utils.tdWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  ),
                  vertical(20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => const AlertDialogPage1(),
                        barrierDismissible: true,
                      );
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Utils.tdYellowO),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Utils.tdWhite),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        GoogleFonts.poiretOne(
                          color: Utils.tdWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                          const StadiumBorder(side: BorderSide.none)),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 40)),
                    ),
                    child: const Text('Donateur'),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    height: 1,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Utils.tdWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text(
                    'ou',
                    style: GoogleFonts.poiretOne(
                      color: Utils.tdWhite,
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    height: 1,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Utils.tdWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => const AlertDialogPage2(),
                        barrierDismissible: true,
                      );
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Utils.tdYellowO),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Utils.tdWhite),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        GoogleFonts.poiretOne(
                          color: Utils.tdWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                          const StadiumBorder(side: BorderSide.none)),
                      minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 40)),
                    ),
                    child: const Text('Organisateur'),
                  ),
                ],
              ),
            ),
            copyright(),
          ],
        ),
      ),
    );
  }
}
