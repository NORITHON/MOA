import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gangganggang/src/baby_view.dart';
import 'package:gangganggang/src/introduction_view.dart';
import 'package:gangganggang/src/mom_view.dart';
import 'package:gangganggang/src/splash_view.dart';
import 'package:gangganggang/src/start_view.dart';
import 'package:gangganggang/analysis_result.dart';
import 'package:gangganggang/loading_animation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/showcase_timeline_tile.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimelineTile Showcase',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: SplashScreen(),
    );
  }
}
