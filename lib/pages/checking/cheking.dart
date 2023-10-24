import 'package:e_collect_app/pages/navbar/navbar.dart';
import 'package:e_collect_app/tools/widgets/copyright.dart';
import 'package:e_collect_app/tools/widgets/logotrans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../tools/utils/utils.dart';
import '../../tools/utils/var.dart';
import '../../tools/widgets/space.dart';

class ChekingPage extends StatelessWidget {
  const ChekingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: Utils.background,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            logotrans(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Column(
                children: [
                  vertical(20),
                  Text(
                    'Dernier virement',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  vertical(30),
                  ValueListenableBuilder(
                    valueListenable: montant,
                    builder: (context, value, _) {
                      return Text(
                        'Vous venez de virer un montant de ${montant.value} en ${nature.value} vers le compte de ${nomcompte.value} votre partenaire.',
                        style: GoogleFonts.poppins(
                          color: Utils.tdWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5,
                          wordSpacing: 1,
                          height: 2,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      );
                    },
                  ),
                  vertical(10),
                  Text(
                    'Merci de parienter un moment en attendant que son compte soit débiter, il vous contactera !',
                    style: GoogleFonts.poppins(
                      color: Utils.tdWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                      wordSpacing: 1,
                      height: 2,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                  vertical(30),
                  Text(
                    'Historique',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  vertical(30),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      color: Utils.tdYellowO,
                      elevation: 3,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide.none,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10.21.23  9:34',
                              style: GoogleFonts.poiretOne(
                                color: Utils.tdWhite,
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                              ),
                            ),
                            vertical(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ValueListenableBuilder(
                                  valueListenable: montant,
                                  builder: (context, value, _) {
                                    return Text(
                                      'Montant : ${montant.value}\nNature : ${nature.value}\nPartenaire : ${nomcompte.value}',
                                      style: GoogleFonts.poppins(
                                        color: Utils.tdWhite,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.5,
                                      ),
                                    );
                                  },
                                ),
                                const Icon(
                                  Icons.error,
                                  color: Utils.tdRed,
                                  size: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      color: Utils.tdYellowO,
                      elevation: 3,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide.none,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '9.27.23  21:34',
                              style: GoogleFonts.poiretOne(
                                color: Utils.tdWhite,
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                              ),
                            ),
                            vertical(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ValueListenableBuilder(
                                  valueListenable: montant,
                                  builder: (context, value, _) {
                                    return Text(
                                      'Montant : ${montant.value}\nNature : ${nature.value}\nPartenaire : ${nomcompte.value}',
                                      style: GoogleFonts.poppins(
                                        color: Utils.tdWhite,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.5,
                                      ),
                                    );
                                  },
                                ),
                                const Icon(
                                  Icons.check_circle_rounded,
                                  color: Utils.tdWhite,
                                  size: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  vertical(30),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBar())),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Home',
                            style: GoogleFonts.poiretOne(
                              color: Utils.tdWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const Icon(
                            Icons.reply,
                            color: Utils.tdWhiteO,
                            size: 30,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                  ),
                  vertical(30),
                  copyright(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
