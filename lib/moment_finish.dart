import 'package:flutter/material.dart';
import 'package:gangganggang/main.dart';
import 'package:gangganggang/src/showcase_timeline_tile.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(const moment_finish());
}

class moment_finish extends StatefulWidget {
  const moment_finish({Key? key}) : super(key: key);

  @override
  State<moment_finish> createState() => _MyAppState();
}

class _MyAppState extends State<moment_finish> {
  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xff0B101F),
          border: Border.all(
            width: 0.0,
            color: const Color(0xff0B101F),
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 80.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '소중한 모먼트가 성공적으로 추가되었습니다!',
                    style: pageTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  static const width = 100.0;
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox();
  }

  SizedBox get _signupButton {
    return SizedBox();
  }

  SizedBox get _signinButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerRight,
        child: Material(
          borderRadius: signinButtonBorderRadius,
          color: signinButtonColor,
          child: InkWell(
            borderRadius: signinButtonBorderRadius,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: const Padding(
              padding: signinButtonPadding,
              child: Text(
                '확인',
                style: signinButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

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
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff0B101F),
                border: Border.all(
                  width: 0.0,
                  color: const Color(0xff0B101F),
                ),
              ),
              child: ColoredBox(
                color: const Color(0xff0B101F),
                child: Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index != pagesLength - 3
                          ? _skipButton(setIndex: setIndex)
                          : const SizedBox(width: width),
                      index != pagesLength - 1 ? _signupButton : _signinButton,
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
