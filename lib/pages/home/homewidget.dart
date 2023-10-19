import 'package:e_collect_app/tools/widgets/space.dart';
import 'package:flutter/material.dart';
import '../../tools/utils/utils.dart';
import 'virement/virairtel/virairtel.dart';
import 'virement/virmpesa/virmpesa.dart';
import 'virement/virorange/virorange.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const VirementAirtel(),
              barrierDismissible: true,
            );
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all<Color>(Utils.tdWhite),
            shape: MaterialStateProperty.all(
                const StadiumBorder(side: BorderSide.none)),
            minimumSize: MaterialStateProperty.all<Size>(
                const Size(80, 50)),
          ),
          child: CircleAvatar(
            radius: 20,
            child: Image(
              image: Utils.airtel,
            ),
          ),
        ),
        vertical(30),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const VirementOrange(),
              barrierDismissible: true,
            );
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all<Color>(Utils.tdWhite),
            shape: MaterialStateProperty.all(
                const StadiumBorder(side: BorderSide.none)),
            minimumSize: MaterialStateProperty.all<Size>(
                const Size(80, 50)),
          ),
          child: CircleAvatar(
            radius: 20,
            child: Image(
              image: Utils.orange,
            ),
          ),
        ),
        vertical(30),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const VirementMpesa(),
              barrierDismissible: true,
            );
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all<Color>(Utils.tdWhite),
            shape: MaterialStateProperty.all(
                const StadiumBorder(side: BorderSide.none)),
            minimumSize: MaterialStateProperty.all<Size>(
                const Size(80, 50)),
          ),
          child: CircleAvatar(
            radius: 20,
            child: Image(
              image: Utils.mpesa,
            ),
          ),
        ),
      ],
    );
  }
}
