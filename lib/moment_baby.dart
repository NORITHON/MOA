import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gangganggang/moment_baby_tag.dart';
import 'package:gangganggang/utils/app_text_style.dart';
import 'package:onboarding/onboarding.dart';

class MomentBaby extends StatefulWidget {
  const MomentBaby({Key? key, required this.image}) : super(key: key);
  final File? image;

  @override
  State<MomentBaby> createState() => _MomentBaby();
}

class _MomentBaby extends State<MomentBaby> {
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
              const SizedBox(height: 48),
              const Text(
                '모먼트의 제목을 적어주세요',
                style: TextStyle(
                    fontFamily: 'Jalnan', fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '12월 27일의 기록',
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
              const SizedBox(height: 281),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MomentBabyTag(image: widget.image!)));
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

                  backgroundColor: MaterialStateProperty.resolveWith((states) {
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
    );
  }
}
