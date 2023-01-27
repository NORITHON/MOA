import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/baby_showcase_timeline_tile.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'showcase_timeline.dart';

class GrowView extends StatefulWidget {
  @override
  State<GrowView> createState() => _GrowViewState();
}

class _GrowViewState extends State<GrowView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.contain,
              colorBlendMode: BlendMode.darken,
            ),
            Center()
          ],
        ),
      ),
    );
  }
}
