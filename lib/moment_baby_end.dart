import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gangganggang/src/introduction_view.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:onboarding/onboarding.dart';

class MomentBabyEndView extends StatefulWidget {
  const MomentBabyEndView({Key? key}) : super(key: key);

  @override
  State<MomentBabyEndView> createState() => _MomentBabyEndState();
}

class _MomentBabyEndState extends State<MomentBabyEndView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 53, horizontal: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 232),
                  const Text(
                    '소중한 모먼트가',
                    style: TextStyle(
                        fontFamily: 'Jalnan',
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  const Text(
                    '성공적으로 추가됐습니다 :)',
                    style: TextStyle(
                        fontFamily: 'Jalnan',
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IntroductionView()));
                    },
                    child: Text(
                      '확인',
                      style: subtitle3.copyWith(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(48, 12, 48, 12)),
                      foregroundColor: MaterialStateProperty.all(
                          Colors.white), //syleForm에서  primarycolor랑 같다.
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
