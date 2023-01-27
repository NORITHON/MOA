import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:gangganggang/painters/face_detector_painter.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import 'camera_view.dart';

class UploadCamera extends StatefulWidget {
  const UploadCamera({Key? key}) : super(key: key);

  @override
  State<UploadCamera> createState() => _UploadCameraState();
}

class _UploadCameraState extends State<UploadCamera> {
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
    return CameraView(
      title: 'Face Detector',
      customPaint: _customPaint,
      text: _text,
      smile: _smile,
      onImage: (inputImage) {
        processImage(inputImage);
      },
      initialDirection: CameraLensDirection.front,
    );
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
