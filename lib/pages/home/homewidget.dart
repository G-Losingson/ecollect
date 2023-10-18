import 'package:flutter/material.dart';
import 'package:e_collect_app/tools/widgets/design.dart';

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => const VirementAirtel(),
              barrierDismissible: true,
            );
          },
          child: Design(image: Utils.airtel),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => const VirementOrange(),
              barrierDismissible: true,
            );
          },
          child: Design(image: Utils.orange),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => const VirementMpesa(),
              barrierDismissible: true,
            );
          },
          child: Design(image: Utils.mpesa),
        ),
      ],
    );
  }
}
