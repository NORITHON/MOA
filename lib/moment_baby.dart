import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        '모먼트 추가하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Image.file(widget.image!),
                    const SizedBox(height: 50),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 45.0, vertical: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '모먼트의 제목을 적어주세요',
                          style: pageTitleStyle,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 65.0, vertical: 10.0),
                      child: TextField(
                        style: pageInfoStyle,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          hintText: '12월 27일의 기록',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('다음'),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(80, 15, 80, 15)),
                        foregroundColor: MaterialStateProperty.all(
                            Colors.white), //syleForm에서  primarycolor랑 같다.
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
