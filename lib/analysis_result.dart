import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class analysis_result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B101F),
        body: SafeArea(
          child: Column(
            children: [
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
                child: Container(
                    height: 82,
                    width: 82,
                    child: Image.asset('assets/emos/emo-4.png')),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  '웃음',
                ),
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
              SafeArea(
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-3.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-4.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-6.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-8.png')),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 179, left: 58, bottom: 43),
                child: Row(children: [
                  SizedBox(
                    height: 43,
                    width: 124,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('이전'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Colors.white), //syleForm에서  primarycolor랑 같다.
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.white))),

                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.disabled)) {
                            // disabled : onpressed가 null일때 , pressed : 클릭됐을때
                            return const Color(0xff1765AC);
                          } else {
                            return Colors.transparent;
                          }
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 58,
                    ),
                  ),
                  SizedBox(
                    height: 43,
                    width: 124,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => analysis_result()));
                      },
                      child: Text('다음'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Colors.white), //syleForm에서  primarycolor랑 같다.
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.white))),

                        backgroundColor:
                            MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.disabled)) {
                            // disabled : onpressed가 null일때 , pressed : 클릭됐을때
                            return const Color(0xff1765AC);
                          } else {
                            return Colors.transparent;
                          }
                        }),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
