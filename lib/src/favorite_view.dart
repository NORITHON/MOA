import 'dart:ui';

import 'package:colorful_safe_area/colorful_safe_area.dart';
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
    return ColorfulSafeArea(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Weekly Report',
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
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '이번 주 나의 표정들',
                  style: subtitle3,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '2023.01.23 ~ 2023.01.29',
                  style: tiny2.copyWith(color: Color(0xffB7B7B7)),
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              Image.asset('assets/emoji/emotion.png', height: 309, width: 312),
              const SizedBox(
                height: 66,
              ),
              const Text(
                '이번 주 당신이 가장 많이 지은 표정은',
                style: subtitle3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '슬픔',
                    style: subtitle3.copyWith(color: Color(0xff1765AC)),
                  ),
                  Text(
                    '입니다.',
                    style: subtitle3,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset('assets/emoji/emo_blue_sad.png',
                  height: 48, width: 48),
              const SizedBox(
                height: 17,
              ),
              const Text(
                '당신의 건강이 걱정돼요..',
                style: tiny1,
              ),
              const Text(
                '주변 사람들과 지금 상태에 대해',
                style: tiny1,
              ),
              const Text(
                '얘기해보는건 어떤가요?',
                style: tiny1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
