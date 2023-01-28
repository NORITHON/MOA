import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
                          '이 사진을 나타내는 설명 단어를\n추가해주세요',
                          style: pageTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 100),
                        const Text(
                          '예시) #돌잡이#귀여운우리아기',
                          style: pageInfoStyle,
                          textAlign: TextAlign.center,
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
