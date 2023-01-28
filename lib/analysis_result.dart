import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gangganggang/painters/face_detector_painter.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class analysis_result extends StatefulWidget {
  final String? path;

  const analysis_result({Key? key, required this.path}) : super(key: key);

  @override
  State<analysis_result> createState() => _analysis_resultState();
}

class _analysis_resultState extends State<analysis_result> {
  final FaceDetector _faceDetector = FaceDetector(
    options: FaceDetectorOptions(
      enableContours: true,
      enableClassification: true,
    ),
  );
  bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;
  String? _smile;
  @override
  Widget build(BuildContext context) {
    final inputImage = InputImage.fromFilePath(widget.path!);
    processImage(inputImage);
    print(_text);
    print(_smile);
    return Scaffold(
        backgroundColor: const Color(0xff0B101F),
        body: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 70, left: 113, right: 113, bottom: 60),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '당신의 순간 추가하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '당신의 표정을 분석했어요\n현재 기분과 가장 가까운 표정은',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Jalnan',
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),
                ),
              ),
              // if (_text == '웃음')
              //   Padding(
              //     padding: const EdgeInsets.only(right: 84.5, left: 84.5),
              //     child: Container(
              //         height: 82,
              //         width: 82,
              //         child: Image.asset('assets/emoji/emo_orange_happy.png')),
              //   ),
              // if (_text == '미소')
              //   Padding(
              //     padding: const EdgeInsets.only(right: 84.5, left: 84.5),
              //     child: Container(
              //         height: 82,
              //         width: 82,
              //         child: Image.asset('assets/emoji/emo_orange_smile.png')),
              //   ),
              // if (_text == '무표정')
              //   Padding(
              //     padding: const EdgeInsets.only(right: 84.5, left: 84.5),
              //     child: Container(
              //         height: 82,
              //         width: 82,
              //         child: Image.asset(
              //             'assets/emoji/emo_orange_blank_expresion.png')),
              //   ),
              // if (_text == '슬픔')
              Padding(
                padding: const EdgeInsets.only(right: 84.5, left: 84.5),
                child: Container(
                    height: 82,
                    width: 82,
                    child: Image.asset('assets/emoji/emo_orange_sad.png')),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Text(
                  _text!,
                ),
              ),
              Divider(
                color: Colors.white,
                indent: 150,
                endIndent: 150,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  right: 100,
                  left: 100,
                  bottom: 66,
                ),
                child: Text(
                  '#우울한 #잔잔한 #후회가 남는',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 143, left: 143),
                child: Text('다른 표정 선택하기'),
              ),
              SafeArea(
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-3.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-4.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-6.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20),
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('assets/emos/emo-8.png')),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 179, left: 58, bottom: 43),
                child: Row(children: [
                  SizedBox(
                    height: 43,
                    width: 124,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('이전'),
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 58,
                    ),
                  ),
                  SizedBox(
                    height: 43,
                    width: 124,
                    // child: ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) =>
                    //                 analysis_result(widget.path)));
                    //   },
                    //   child: Text('다음'),
                    //   style: ButtonStyle(
                    //     foregroundColor: MaterialStateProperty.all(
                    //         Colors.white), //syleForm에서  primarycolor랑 같다.
                    //     shape:
                    //         MaterialStateProperty.all<RoundedRectangleBorder>(
                    //             const RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.zero,
                    //                 side: BorderSide(color: Colors.white))),

                    //     backgroundColor:
                    //         MaterialStateProperty.resolveWith((states) {
                    //       if (states.contains(MaterialState.disabled)) {
                    //         // disabled : onpressed가 null일때 , pressed : 클릭됐을때
                    //         return const Color(0xff1765AC);
                    //       } else {
                    //         return Colors.transparent;
                    //       }
                    //     }),
                    //   ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }

  Future<void> processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {
      _text = '';
      _smile = '';
    });
    final faces = await _faceDetector.processImage(inputImage);
    if (inputImage.inputImageData?.size != null &&
        inputImage.inputImageData?.imageRotation != null) {
      final painter = FaceDetectorPainter(
          faces,
          inputImage.inputImageData!.size,
          inputImage.inputImageData!.imageRotation);
      _customPaint = CustomPaint(painter: painter);
    } else {
      String text = '';

      String smile = 'Smile Probability: ';
      for (final face in faces) {
        // text += 'face: ${face.boundingBox}\n\n';
        smile += '${face.smilingProbability}\n\n';
        if (face.smilingProbability! > 0.86) {
          text = '웃음';
        } else if (face.smilingProbability! > 0.6) {
          text = '미소';
        } else if (face.smilingProbability! > 0.01) {
          text = '무표정';
        } else {
          text = '슬픔';
        }
        print(text);
      }
      _text = text;
      _smile = smile;

      _customPaint = null;
    }
    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }
}
