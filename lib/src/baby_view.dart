import 'dart:ui';

import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/send_letter_button.dart';
import 'package:gangganggang/src/baby_showcase_timeline_tile.dart';
import 'package:gangganggang/src/bottom_navigation.dart';
import 'package:gangganggang/src/start_view.dart';
import 'package:gangganggang/src/tab_item.dart';
import 'package:gangganggang/src/tab_navigator.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'showcase_timeline.dart';

class BabyView extends StatefulWidget {
  @override
  State<BabyView> createState() => _BabyViewState();
}

class _BabyViewState extends State<BabyView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidate = AutovalidateMode.disabled;

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
                        '아이에 대하여',
                        style: TextStyle(fontFamily: 'Jalnan', fontSize: 20),
                      ),
                      SizedBox(
                        height: 41,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '아이의 이름을 적어주세요',
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
                          '아이의 생년월인/ 예정 출산일을 선택해주세요',
                          style: body,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DropdownDatePicker(
                        textStyle: subtitle3,
                        locale: "en",
                        inputDecoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            helperText: '',
                            contentPadding: const EdgeInsets.all(8),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(10))), // optional
                        isDropdownHideUnderline: true, // optional
                        isFormValidator: true, // optional
                        startYear: 1900, // optional
                        endYear: 2020, // optional
                        width: 10, // optional
                        // selectedDay: 14, // optional
                        selectedMonth: 10, // optional
                        selectedYear: 1993, // optional
                        onChangedDay: (value) => print('onChangedDay: $value'),
                        onChangedMonth: (value) =>
                            print('onChangedMonth: $value'),
                        onChangedYear: (value) =>
                            print('onChangedYear: $value'),

                        //boxDecoration: BoxDecoration(
                        // optional
                        // showDay: false,// optional
                        // dayFlex: 2,// optional
                        // locale: "zh_CN",// optional
                        // hintDay: 'Day', // optional
                        // hintMonth: 'Month', // optional
                        // hintYear: 'Year', // optional
                        // hintTextStyle: TextStyle(color: Colors.grey), // optional
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '아이의 성별을 선택해주세요',
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
                        inactiveBgColor: Color.fromARGB(255, 7, 21, 57),
                        inactiveFgColor: Colors.white,
                        totalSwitches: 3,
                        labels: ['여자', '남자', '알 수 없음'],
                        borderWidth: 2.0,
                        borderColor: [Colors.white],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                      SizedBox(
                        height: 160,
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
                                  builder: (context) => StartView()));
                        },
                        child: Text('시작하기',
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
