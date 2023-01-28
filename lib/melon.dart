import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gangganggang/src/introduction_view.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class melon extends StatefulWidget {
  @override
  State<melon> createState() => _melonState();
}

class _melonState extends State<melon> {
  void launchWebView(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B101F),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 125),
                child: Align(
                  alignment: Alignment.center,
                  child: const Text(
                    '소중한 모먼트가\n\n성공적으로 추가되었습니다 :)',
                    style: TextStyle(
                        fontFamily: 'Jalnan',
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchWebView(
                      'https://www.melon.com/search/total/index.htm?q=%EB%B0%A4%ED%8E%B8%EC%A7%80&section=&mwkLogType=T');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Container(
                      height: 204,
                      width: 204,
                      child: Image.asset('assets/images/iu.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Divider(
                  color: Colors.greenAccent,
                  thickness: 4.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28),
              ),
              Container(
                height: 38,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '❤️나만을 위한 5분',
                    style: tiny2_bold,
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                        Colors.black), //syleForm에서  primarycolor랑 같다.

                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        // disabled : onpressed가 null일때 , pressed : 클릭됐을때
                        return const Color(0xff1765AC);
                      } else {
                        return Colors.white;
                      }
                    }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  '오늘의 당신은 슬픔을 느끼고 있군요...',
                  style: TextStyle(
                      fontFamily: 'PretendardVariable',
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 17),
                child: Text(
                  '최근 많이 들었던 노래를 준비했어요.\n노래를 들으며 기분 전환 어떠신가요?',
                  style: TextStyle(
                      fontFamily: 'PretendardVariable',
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 125,
                ),
              ),
              Container(
                height: 43,
                width: 124,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IntroductionView()));
                  },
                  child: Text(
                    '확인',
                    style: subtitle3,
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                        Colors.black), //syleForm에서  primarycolor랑 같다.

                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.disabled)) {
                        // disabled : onpressed가 null일때 , pressed : 클릭됐을때
                        return const Color(0xff1765AC);
                      } else {
                        return Colors.white;
                      }
                    }),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
