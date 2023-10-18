import 'package:e_collect_app/pages/choise/choise.dart';
import 'package:e_collect_app/tools/widgets/logotrans.dart';
import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../tools/utils/utils.dart';

class ThanksPage extends StatelessWidget {
  const ThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: Utils.welcomebackground,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logotrans(),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 150,
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.error,
                    size: 40,
                    color: Utils.tdRed,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Oups!',
                        style: GoogleFonts.poiretOne(
                          color: Utils.tdRed,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        child: Image(image: Utils.oups),
                      ),
                    ],
                  ),
                  vertical(20),
                  Text(
                    'Désolé pour ce manque,\nVeuillez contacter votre partenaire pour qu\'il vous partage le code de son compte pour cette application.',
                    style: GoogleFonts.poiretOne(
                      color: Utils.tdWhite,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  vertical(20),
                  SizedBox(
                    height: 120,
                    child: Image(image: Utils.emoji),
                  ),
                  vertical(30),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChoisePage())),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Quitter',
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
                ],
              ),
            ),
            Text(
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
            ),
          ],
        ),
      ),
    );
  }
}
