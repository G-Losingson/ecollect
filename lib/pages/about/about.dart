import 'package:e_collect_app/pages/about/facebook.dart';
import 'package:e_collect_app/pages/about/github.dart';
import 'package:e_collect_app/pages/about/linkedin.dart';
import 'package:e_collect_app/pages/about/twitter.dart';
import 'package:e_collect_app/pages/about/whatshapp.dart';
import 'package:e_collect_app/tools/widgets/logotrans.dart';
import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:flutter/material.dart';
import '../../tools/utils/utils.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: Utils.welcomebackground,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            logotrans(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 50,
              ),
              child: Column(
                children: [
                  Text(
                    'A Propos',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  vertical(30),
                  Text(
                    'Jeune passionné de la tech, puisant le goût de la technologie (la Programmation) auprès de son grand frère, se rendant à l\'Université Catholique de Bukavu pour commencer sa carrière au sein de la Faculté des Sciences, en sa filière de l\'Informatique.\nAccueilli dans la Google Developer Student Community, celle-ci lui montrant sa voie dans le développement mobile. D\'où je suis un Développeur Mobile avec la fameuse FrameWork Flutter.',
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
                              builder: (context) => const Facebook()),
                        ),
                        child: const Icon(IonIcons.logo_facebook),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            vertical(50),
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
