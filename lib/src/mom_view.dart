import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/baby_showcase_timeline_tile.dart';
import 'package:gangganggang/src/baby_view.dart';
import 'package:gangganggang/src/bottom_navigation.dart';
import 'package:gangganggang/src/tab_item.dart';
import 'package:gangganggang/src/tab_navigator.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'showcase_timeline.dart';

class MomView extends StatefulWidget {
  @override
  State<MomView> createState() => _MomViewState();
}

class _MomViewState extends State<MomView> {
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
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 104),
                  child: Column(
                    children: [
                      Text(
                        '당신에 대하여',
                        style: TextStyle(fontFamily: 'Jalnan', fontSize: 20),
                      ),
                      SizedBox(
                        height: 41,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '당신의 이름을 적어주세요',
                          style: body,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: '이름을 적어주세요',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '현재 상태를 선택해주세요',
                          style: body,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ToggleSwitch(
                        minWidth: 128.0,
                        minHeight: 52.0,
                        fontSize: 16.0,
                        initialLabelIndex: 1,
                        activeBgColor: [Colors.white],
                        activeFgColor: Colors.black,
                        inactiveBgColor: Color(0xff091F56),
                        inactiveFgColor: Colors.white,
                        totalSwitches: 3,
                        labels: ['임신 전', '임신 중', '출산 후'],
                        borderWidth: 2.0,
                        borderColor: [Colors.white],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '배우자 혹은 가장 가까운 가족의 연락처를\n적어주세요 (선택)',
                          style: body,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: '휴대폰 번호 (- 없이 숫자만 입력)',
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '*이 연락처를 작성하면 당신이 정신적 혹은 감정적으로 도움이 필요할 때,\n당신의 이름과 함께 도움을 요청하는 문자가 보내집니다.',
                        style:
                            TextStyle(fontFamily: 'Pretendard', fontSize: 12),
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            minimumSize: Size(380, 48), //width, height

                            alignment: Alignment.center,
                            backgroundColor: Colors.white,
                            textStyle: subtitle2.copyWith(color: Colors.black)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BabyView()));
                        },
                        child: Text('다음',
                            style: subtitle2.copyWith(color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
