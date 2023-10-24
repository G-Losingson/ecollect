import 'package:e_collect_app/pages/checking/cheking.dart';
import 'package:e_collect_app/tools/widgets/copyright.dart';
import 'package:e_collect_app/tools/widgets/logotrans.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../tools/utils/utils.dart';
import '../../../tools/widgets/space.dart';
import '../../about/google.dart';
import '../../about/github.dart';
import '../../about/linkedin.dart';
import '../../about/twitter.dart';
import '../../about/whatshapp.dart';
import '../../choise/choise.dart';

class ThxPage extends StatelessWidget {
  const ThxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logotrans(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Image(image: Utils.thanks),
                  vertical(30),
                  Text(
                    'Merci pour nous avoir utiliser!\nVeuillez attendre une confirmation de d\'ici-là dans la fênêtre "Cheking"!',
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
                  vertical(50),
                  Text(
                    'Qu\'il vous plaise de nous suivre sur les différents réseaux sociaux!',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Whatshapp()),
                        ),
                        child: const Icon(IonIcons.logo_whatsapp),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Twitter()),
                        ),
                        child: const Icon(IonIcons.logo_twitter),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Linkedin()),
                        ),
                        child: const Icon(IonIcons.logo_linkedin),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Github()),
                        ),
                        child: const Icon(IonIcons.logo_github),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Google()),
                        ),
                        child: const Icon(IonIcons.logo_google),
                      ),
                    ],
                  ),
                  vertical(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChekingPage())),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.reply,
                                color: Utils.tdWhiteO,
                                size: 30,
                                textDirection: TextDirection.ltr,
                              ),
                              Text(
                                'Cheking',
                                style: GoogleFonts.poiretOne(
                                  color: Utils.tdWhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChoisePage())),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Accueil',
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
                ],
              ),
            ),
            vertical(100),
            copyright(),
          ],
        ),
      ),
    );
  }
}
