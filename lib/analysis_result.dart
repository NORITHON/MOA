import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class analysis_result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B101F),
        body: SafeArea(
            child: Column(children: [
          const Padding(
            padding:
                EdgeInsets.only(top: 70, left: 113, right: 113, bottom: 60),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '당신의 순간 추가하기',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '당신의 표정을 분석했어요\n현재 기분과 가장 가까운 표정은',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 84.5, left: 84.5),
            child: Image.asset('assets/emos/emo-4.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 130,
              left: 130,
              bottom: 66,
            ),
            child: Text(
              '#행복한 #기쁜 #짜릿한',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 143, left: 143),
            child: Text('다른 표정 선택하기'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Image.asset('assets/emos/emo-4.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Image.asset('assets/emos/emo-4.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Image.asset('assets/emos/emo-4.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Image.asset('assets/emos/emo-4.png'),
          ),
        ])));
  }
}
