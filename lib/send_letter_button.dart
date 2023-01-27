import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gangganggang/utils/app_text_style.dart';

class SentLetterWidget extends StatelessWidget {
  final String text;
  final String image;
  final Color? color;

  const SentLetterWidget(
      {Key? key, required this.text, required this.image, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                height: 36,
                width: 36,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(text, style: button_2.copyWith(color: Colors.black)),
      ],
    );
  }
}
