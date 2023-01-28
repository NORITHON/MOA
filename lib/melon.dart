import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class melon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B101F),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 145),
                child: Align(
                  alignment: Alignment.center,
                  child: const Text(
                    '소중한 모먼트가\n성공적으로 추가되었습니다 :)',
                    style: TextStyle(
                        fontFamily: 'Jalnan',
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Container(
                    height: 204,
                    width: 204,
                    child: Image.asset('assets/images/iu.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28),
              ),
              SizedBox(
                height: 38,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('❤️나만을 위한 5분'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                        Colors.black), //syleForm에서  primarycolor랑 같다.
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.white))),

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
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  '오늘의 당신은 슬픔을 느끼고 있군요...',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text('최근 많이 들었던 노래를 준비했어요.\n노래를 들으며 기분 전환 어떠신가요?'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 180,
                ),
              ),
              SizedBox(
                height: 43,
                width: 124,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('확인'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                        Colors.black), //syleForm에서  primarycolor랑 같다.
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.white))),

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
