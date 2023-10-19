import 'package:e_collect_app/pages/navbar/navbar.dart';
import 'package:e_collect_app/tools/widgets/copyright.dart';
import 'package:e_collect_app/tools/widgets/logotrans.dart';
import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../../../tools/utils/utils.dart';
import '../../tools/utils/var.dart';

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
            image: Utils.background,
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            logotrans(),
            Padding(
              padding: const EdgeInsets.only(
                top: 400,
                left: 30,
                right: 30,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenu.e',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  vertical(10),
                  Text(
                    'En ce "Gala de Charité" électronique',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'Sous le thème :',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  ValueListenableBuilder(
                    valueListenable: theme,
                    builder: (context, value, _) {
                      return Text(
                        theme.value,
                        style: Theme.of(context).textTheme.titleMedium,
                      );
                    },
                  ),
                  vertical(50),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
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
                  vertical(50),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: copyright(),
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
