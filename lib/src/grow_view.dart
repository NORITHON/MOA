import 'dart:ui';
import 'dart:math';

import 'package:colorful_safe_area/colorful_safe_area.dart';
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
  final List<String> _listItem = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];

  final List<String> emoItem = <String>[
    'assets/emoji/emo_blue_happy.png',
    'assets/emoji/emo_orange_happy.png',
    'assets/emoji/emo_blue_sad.png',
    'assets/emoji/emo_orange_smile.png',
    'assets/emoji/emo_blue_blank_expresion.png',
    'assets/emoji/emo_orange_blank_expresion.png',
  ];
  Random random = Random();
  late int randomNumber = random.nextInt(6);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
          backgroundColor: Colors.black,
          body: ColorfulSafeArea(
            color: Colors.black,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text(
                  '나와 가을이의 성장일기',
                  style: subtitle2,
                ),
              ),
              backgroundColor: Colors.black,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '나의 모먼트',
                          style: subtitle3,
                        ),
                        SizedBox(
                          width: 86,
                        ),
                        Text(
                          '가을이의 모먼트',
                          style: subtitle3,
                        ),
                      ],
                    ),
                    SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "2023.01",
                          style: tiny1,
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: _listItem
                            .map((item) => Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(item),
                                            fit: BoxFit.cover)),
                                    child: Transform.translate(
                                      offset: Offset(-65, -65),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 65, vertical: 63),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    '${emoItem[randomNumber]}'))),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
