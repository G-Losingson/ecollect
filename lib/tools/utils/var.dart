import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

dynamic controller = 0;
ValueNotifier<String> theme = ValueNotifier<String>('L\'Alma Mater a besoin de ses nourrissons...');
ValueNotifier<String> nomcompte = ValueNotifier<String>('UCBukavu');
ValueNotifier<int> code = ValueNotifier<int>(230404);
ValueNotifier<int> airtel = ValueNotifier<int>(0991834567);
ValueNotifier<int> mpesa = ValueNotifier<int>(0813445417);
ValueNotifier<int> orange = ValueNotifier<int>(0844300329);
ValueNotifier<int> montant = ValueNotifier<int>(2000);
ValueNotifier<String> nature = ValueNotifier<String>('CDF');

WebViewController whatsapp = WebViewController()
  ..loadRequest(
    Uri.parse('https://wa.me/qr/UGKVL6UW6ADDJ1'),
  );
WebViewController twitter = WebViewController()
  ..loadRequest(
    Uri.parse('https://twitter.com/GeorgesByona23'),
  );
WebViewController linkedin = WebViewController()
  ..loadRequest(
    Uri.parse('https://www.linkedin.com/in/georges-byona-a3aa26264/'),
  );
WebViewController github = WebViewController()
  ..loadRequest(
    Uri.parse('https://github.com/G-Losingson'),
  );
WebViewController facebook = WebViewController()
  ..loadRequest(
    Uri.parse('https://web.facebook.com/georsbym.byona.3?locale=fr_FR'),
  );