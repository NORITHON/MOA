import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/baby_showcase_timeline_tile.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'showcase_timeline.dart';

class FavoriteView extends StatefulWidget {
  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Text('hi'),
          ],
        ),
      ),
    );
  }
}
