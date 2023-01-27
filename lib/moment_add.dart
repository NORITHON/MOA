import 'package:flutter/material.dart';
import 'package:gangganggang/moment_finish.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(const moment_add());
}

class moment_add extends StatefulWidget {
  const moment_add({Key? key}) : super(key: key);

  @override
  State<moment_add> createState() => _MyAppState();
}

class _MyAppState extends State<moment_add> {
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
              Text(
                '모먼트 추가하기',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 40.0,
                ),
                child: Image.asset(
                  'assets/images/baby_mom.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '누구의 사진인가요?',
                    style: pageTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 45.0),
                child: Row(children: [
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('가을'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Colors.white), //syleForm에서  primarycolor랑 같다.
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
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
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('당신'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                            Colors.white), //syleForm에서  primarycolor랑 같다.
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
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
                  ),
                ]),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '당신의 사진은 당신만 확인이 가능하며\n'
                    '당신의 표정을 분석하여 당신의 감정이 어떤 상태인지\n'
                    '확인할 수 있습니다.\n',
                    style: pageInfoStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
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
              Text(
                '가을이의 모먼트 추가하기',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 40.0,
                ),
                child: Image.asset(
                  'assets/images/baby_mom.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10),
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
                padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 10.0),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 10.0),
                child: SizedBox(
                  height: 130,
                  width: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
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
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '가을이의 모먼트 추가하기',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.asset(
                  'assets/images/baby_mom.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '이 사진을 나타내는 설명단어를\n추가해주세요!',
                    style: pageTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 30.0),
                child: TextField(
                  style: pageInfoStyle,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: '설명단어를 추가해주세요',
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 10.0),
                child: SizedBox(
                  height: 120,
                  width: 50,
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

  SizedBox get _signinButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerRight,
        child: Material(
          borderRadius: defaultSkipButtonBorderRadius,
          color: defaultSkipButtonColor,
          child: InkWell(
            borderRadius: defaultSkipButtonBorderRadius,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => moment_finish()));
            },
            child: const Padding(
              padding: defaultSkipButtonPadding,
              child: Text(
                '작성 완료',
                style: defaultSkipButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultSkipButtonBorderRadius,
          color: defaultSkipButtonColor,
          child: InkWell(
            borderRadius: defaultSkipButtonBorderRadius,
            onTap: () {
              if (setIndex != null) {
                index = 1;
                setIndex(1);
              }
            },
            child: const Padding(
              padding: defaultSkipButtonPadding,
              child: Text(
                '다음',
                style: defaultSkipButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox get _signupButton {
    return SizedBox();
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
                      index != pagesLength - 1
                          ? _skipButton(setIndex: setIndex)
                          : const SizedBox(width: width),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: CustomIndicator(
                          netDragPercent: dragDistance,
                          pagesLength: pagesLength,
                          indicator: Indicator(
                            indicatorDesign: IndicatorDesign.polygon(
                              polygonDesign: PolygonDesign(
                                polygon: DesignType.polygon_circle,
                              ),
                            ),
                          ),
                        ),
                      ),
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
