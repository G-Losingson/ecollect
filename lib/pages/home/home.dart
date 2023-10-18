import '../../tools/utils/var.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_collect_app/tools/utils/utils.dart';
import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:e_collect_app/pages/home/homewidget.dart';
import 'package:e_collect_app/tools/widgets/logotrans.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logotrans(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Faites un geste pour le bien de tous...',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  vertical(30),
                  Image(image: Utils.welcome),
                  vertical(30),
                  Text(
                    'Cliquez sur un de vos comptez d\'où vous voulez virer l\'argent vers le compte Equity de :',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  vertical(15),
                  ValueListenableBuilder(
                    valueListenable: nomcompte,
                    builder: (context, value, _) {
                      return Text(
                        nomcompte.value,
                        style: GoogleFonts.poiretOne(
                          color: Utils.tdYellow,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                        ),
                      );
                    },
                  ),
                  vertical(30),
                  const HomeWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
