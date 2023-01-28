import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gangganggang/moment_baby_end.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:onboarding/onboarding.dart';

class MomentBabyTag extends StatefulWidget {
  const MomentBabyTag({Key? key, required this.image}) : super(key: key);
  final File? image;

  @override
  State<MomentBabyTag> createState() => _MomentBabyTag();
}

class _MomentBabyTag extends State<MomentBabyTag> {
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
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text('가을이의 모먼트 추가하기',
                      style: subtitle1.copyWith(color: Colors.white)),
                ),
                Container(
                    height: 225,
                    width: 335,
                    child: Image.file(
                      widget.image!,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(height: 50),
                const Text(
                  '이 사진을 나타내는 설명 단어를\n추가해주세요',
                  style: TextStyle(
                      fontFamily: 'Jalnan', fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12),
                const Text(
                  '예시) #돌잡이#귀여운우리아기',
                  style: pageInfoStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '실명단어를 추가해주세요',
                      labelStyle: TextStyle(
                        color: Colors.grey, //<-- SEE HERE
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 211),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MomentBabyEndView()));
                  },
                  child: Text(
                    '다음',
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
    );
  }
}
