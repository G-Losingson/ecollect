import 'package:e_collect_app/pages/about/about.dart';
import 'package:e_collect_app/pages/checking/cheking.dart';
import 'package:e_collect_app/pages/home/home.dart';
import 'package:e_collect_app/tools/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int _selectedIndex = 0;

Set<Widget> _widgetOptions = <Widget>{
  const HomePage(),
  const ChekingPage(),
  const AboutPage(),
};

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: GNav(
          gap: 20,
          haptic: true,
          color: Utils.tdWhite,
          curve: Curves.easeOutExpo,
          iconSize: 20,
          hoverColor: Utils.tdYellowO,
          activeColor: Utils.tdYellow,
          rippleColor: Utils.tdYellow,
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.transparent,
          tabBackgroundColor: Colors.transparent,
          duration: const Duration(milliseconds: 900),
          textStyle: GoogleFonts.poiretOne(
            color: Utils.tdYellow,
            fontSize: 12,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
          ),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.bar_chart,
              text: 'Checking',
            ),
            GButton(
              icon: Icons.info,
              text: 'About',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
