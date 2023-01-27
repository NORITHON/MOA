import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/baby_showcase_timeline_tile.dart';
import 'package:gangganggang/src/bottom_navigation.dart';
import 'package:gangganggang/src/tab_item.dart';
import 'package:gangganggang/src/tab_navigator.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'showcase_timeline.dart';

class StartView extends StatefulWidget {
  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 227),
                child: Column(
                  children: const [
                    Text(
                      '고요한 바다같은',
                      style: TextStyle(fontFamily: 'Jalnan', fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '당신만의 소중한 시간',
                      style: TextStyle(fontFamily: 'Jalnan', fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '모먼트 속 사진들은 당신만 확인 가능하며,',
                      style: tiny2,
                    ),
                    Text(
                      '인물의 표정을 분석하여 어떤 감정 상태를 겪는지',
                      style: tiny2_bold,
                    ),
                    Text(
                      '확인할 수 있습니다.',
                      style: tiny2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: Container(
            width: MediaQuery.of(context).size.width * 0.94,
            //width: 410,
            height: 198,
            child: Stack(
              //will break to another line on overflow
              //use vertical to show  on vertical axis
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SizedBox(
                        height: 80,
                        width: 80,
                        child: FloatingActionButton(
                          onPressed: () {
                            _showModalBottomSheet();
                            //action code for button 2
                          },
                          backgroundColor: Color(0xff091F56),
                          child: Image(
                              image: AssetImage(
                                  'assets/icons/icon-camera-mono.png')),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _showModalBottomSheet() async {
    await showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 160,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 84),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SentLetterWidget(
                        text: '바로찍기',
                        image: 'assets/icons/camera.svg',
                        color: Color(0xffADB6C8),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SentLetterWidget(
                        text: '사진첩',
                        image: 'assets/icons/image.svg',
                        color: Color(0xffADB6C8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
