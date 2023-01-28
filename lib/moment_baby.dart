import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gangganggang/moment_baby_tag.dart';
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
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Row(
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
                        Image.file(widget.image!),
                        const SizedBox(height: 50),
                        const Text(
                          '모먼트의 제목을 적어주세요',
                          style: pageTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 300),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MomentBabyTag(image: widget.image!)));
                          },
                          child: Text('다음'),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(80, 15, 80, 15)),
                            foregroundColor: MaterialStateProperty.all(
                                Colors.white), //syleForm에서  primarycolor랑 같다.
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
