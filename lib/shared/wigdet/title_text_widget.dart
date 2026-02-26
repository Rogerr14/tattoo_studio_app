import 'package:flutter/material.dart';


class TitleTextWidget extends StatelessWidget {
  final String title;
  Color colorTitle;
  double fontSize;
  TextDecoration? textDecoration;

   TitleTextWidget({super.key, required this.title, this.colorTitle = Colors.blueAccent,  this.fontSize = 16, this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: colorTitle,
        fontSize: fontSize,
        decoration: textDecoration

      ),
    );
  }
}