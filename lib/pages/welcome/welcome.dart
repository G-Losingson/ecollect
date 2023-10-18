import 'package:e_collect_app/tools/widgets/logotrans.dart';
import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../../../tools/utils/utils.dart';
import '../../tools/utils/var.dart';
import '../home/home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            logotrans(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenu.e',
                    style: GoogleFonts.poppins(
                      color: Utils.tdWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  vertical(10),
                  Text(
                    'En ce "Gala de Charité" électronique',
                    style: GoogleFonts.poppins(
                      color: Utils.tdWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    'Sous le thème :',
                    style: GoogleFonts.poppins(
                      color: Utils.tdWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5,
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: theme,
                    builder: (context, value, _) {
                      return Text(
                        theme.value,
                        style: GoogleFonts.poppins(
                          color: Utils.tdWhite,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1.5,
                        ),
                      );
                    },
                  ),
                  vertical(50),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Utils.tdYellow),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Utils.tdBlack),
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
                          const Size(double.infinity, 50)),
                    ),
                    child: const Text('Commencer'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
