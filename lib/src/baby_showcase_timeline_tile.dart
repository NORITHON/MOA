import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/tab_item.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'showcase_timeline.dart';

class BabyShowcaseTimelineTile extends StatefulWidget {
  @override
  State<BabyShowcaseTimelineTile> createState() =>
      _BabyShowcaseTimelineTileState();
}

class _BabyShowcaseTimelineTileState extends State<BabyShowcaseTimelineTile> {
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
        top: false,
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
              Center(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: examples.length,
                        itemBuilder: (BuildContext context, int index) {
                          final example = examples[index];

                          return TimelineTile(
                            alignment: TimelineAlign.start,
                            isFirst: index == 0,
                            isLast: index == examples.length - 1,
                            indicatorStyle: IndicatorStyle(
                              width: 130,
                              height: 50,
                              indicatorXY: 0.5,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              indicator: GestureDetector(
                                  onTap: () {
                                    _RowExample(example: example);
                                  },
                                  child: _IndicatorExample(
                                      number: '${index + 1}')),
                              drawGap: true,
                            ),
                            beforeLineStyle: LineStyle(
                              color: Colors.white.withOpacity(1),
                            ),
                            endChild: GestureDetector(
                              child: _RowExample(example: example),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<ShowcaseTimeline>(
                                    builder: (_) =>
                                        ShowcaseTimeline(example: example),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            color: const Color(0x2A2A2A),
            child: SizedBox(
              height: 78,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 82,
                        width: 75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                            ),
                            Text(
                              '홈',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 82,
                        width: 75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite),
                            Text(
                              '돌아보기',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 82,
                        width: 75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings),
                            Text(
                              '설정',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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

class _IndicatorExample extends StatelessWidget {
  const _IndicatorExample({Key? key, required this.number}) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return (() {
      if (number == '1') {
        return GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/emoji/emo_orange_smile.png'))),
          ),
        );
      }
      if (number == '2') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_blue_happy.png'))),
        );
      }
      if (number == '3') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                      'assets/emoji/emo_orange_blank_expresion.png'))),
        );
      }
      if (number == '4') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image:
                      AssetImage('assets/emoji/emo_blue_blank_expresion.png'))),
        );
      }
      if (number == '5') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_orange_sad.png'))),
        );
      }
      if (number == '6') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image:
                      AssetImage('assets/emoji/emo_blue_blank_expresion.png'))),
        );
      }
      if (number == '7') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_orange_happy.png'))),
        );
      }
      if (number == '8') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_blue_smile.png'))),
        );
      }
      if (number == '9') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_orange_smile.png'))),
        );
      }
      if (number == '10') {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_blue_happy.png'))),
        );
      } else {
        return Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/emoji/emo_orange_smile.png'))),
        );
      }
    })();
  }
}

class _RowExample extends StatelessWidget {
  const _RowExample({Key? key, required this.example}) : super(key: key);

  final Example example;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Text(example.name, style: tiny1),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
