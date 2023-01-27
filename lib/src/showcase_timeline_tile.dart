import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/upload_camera.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:page_transition/page_transition.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'showcase_timeline.dart';

class ShowcaseTimelineTile extends StatefulWidget {
  const ShowcaseTimelineTile({Key? key}) : super(key: key);

  @override
  State<ShowcaseTimelineTile> createState() => _ShowcaseTimelineTileState();
}

class _ShowcaseTimelineTileState extends State<ShowcaseTimelineTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
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
                              width: 100,
                              height: 40,
                              //indicatorXY: 0.3,
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
          floatingActionButton: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.94,
                //width: 410,
                height: 98,
                child: FloatingActionButton(
                  onPressed: () {
                    // _showModalBottomSheet();
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const UploadCamera(),
                      ),
                    );
                  },
                  backgroundColor: const Color(0xff091F56),
                  child: const Image(
                    image: AssetImage('assets/icons/icon-camera-mono.png'),
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: const Color(0x002a2a2a),
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
                          children: const [
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
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 82,
                        width: 75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.favorite),
                            Text(
                              '돌아보기',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 82,
                        width: 75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadCamera(),
                          ),
                        );
                      },
                      child: const SentLetterWidget(
                        text: '바로찍기',
                        image: 'assets/icons/camera.svg',
                        color: Color(0xffADB6C8),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadCamera(),
                          ),
                        );
                      },
                      child: const SentLetterWidget(
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow.withOpacity(1),
            ),
          ),
        );
      }
      if (number == '2') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
        );
      }
      if (number == '3') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow.withOpacity(1),
          ),
        );
      }
      if (number == '4') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
        );
      }
      if (number == '5') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
        );
      }
      if (number == '6') {
        return Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/memore-d1468.appspot.com/o/81GhJuX-uRL.png?alt=media&token=1987a091-e7cd-4bda-92f3-cdca7d49143c'),
            ),
          ),
        );
      }
      if (number == '7') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow.withOpacity(1),
          ),
        );
      }
      if (number == '8') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
        );
      }
      if (number == '9') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
        );
      }
      if (number == '10') {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
        );
      } else {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
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
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Text(example.name, style: tiny1),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
