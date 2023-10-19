import 'package:flutter/material.dart';

import '../../tools/utils/utils.dart';

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
        child: Center(
          child: Text('Checking'),
        ),
      ),
    );
  }
}
