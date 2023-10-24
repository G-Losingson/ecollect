import 'package:flutter/material.dart';

import '../../../tools/utils/utils.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

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
      ),
    );
  }
}