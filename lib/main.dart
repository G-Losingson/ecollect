import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_collect_app/tools/themes/theme.dart';
import 'package:e_collect_app/pages/navbar/navbar.dart';
import 'package:e_collect_app/pages/choise/choise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCollect',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: const BottomNavBar(),
    );
  }
}