import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/baby_showcase_timeline_tile.dart';
import 'package:gangganggang/src/bottom_navigation.dart';
import 'package:gangganggang/src/mom_view.dart';
import 'package:gangganggang/src/start_view.dart';
import 'package:gangganggang/src/tab_item.dart';
import 'package:gangganggang/src/tab_navigator.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'showcase_timeline.dart';

// lib/splash_screen.dart
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(milliseconds: 1000),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => MomView()))); // Timer
  }

  @override
  Widget build(BuildContext context) {
    // Building the splash screen here
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [
              Color(0xff091F56),
              Color(0xff0A0E1A),
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              fit: StackFit.expand,
              children: [
                const Image(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.contain,
                  colorBlendMode: BlendMode.darken,
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/images/moa.png'),
                    width: 200,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
