import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gangganggang/analysis_result.dart';
import 'package:gangganggang/loading_animation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/showcase_timeline_tile.dart';

void main() {
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
      home: analysis_result(),
    );
  }
}
