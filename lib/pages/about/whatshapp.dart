import '../../tools/utils/var.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Whatshapp extends StatelessWidget {
  const Whatshapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: WebViewWidget(controller: whatsapp),
    );
  }
}
