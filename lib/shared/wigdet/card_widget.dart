import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';

class CardWidget extends StatefulWidget {
  final String cardTitle;
  final String imagePath;
  final Function() onPress;
  const CardWidget({super.key, required this.cardTitle, required this.imagePath, required this.onPress});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return SizedBox(
      height: responsive.height * 0.2,
      width: responsive.width * 0.9,
      child: InkWell(
        onTap: widget.onPress,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(color: AppTheme.black, width: 1)),
            color: AppTheme.white,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  image: DecorationImage(
                      image: ExactAssetImage(widget.imagePath),
                      fit: BoxFit.cover)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    color: Colors.black.withAlpha(0), // leve overlay
                    child: Center(
                      child: TitleTextWidget(
                        title: widget.cardTitle,
                        colorTitle: AppTheme.white,
                        fontSize: responsive.dp(2.5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
