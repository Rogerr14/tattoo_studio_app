import 'package:flutter/material.dart';

import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';

class FilledButtonWidget extends StatelessWidget {
  const FilledButtonWidget(
      {super.key,
      this.onPressed,
      this.color,
      this.borderColor,
      this.text = '',
      this.width = double.infinity,
      this.height = 40,
      this.borderRadius = 25,
      this.hasWdiget = false,
      this.child,
      this.textColor});

  final void Function()? onPressed;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool hasWdiget;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return FilledButton(
      style: FilledButton.styleFrom(
        minimumSize:
            Size(width!, responsive.isTablet ? responsive.wp(7) : height!),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? AppTheme.primaryColor),
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        backgroundColor: color ??  AppTheme.primaryColor,
      ),
      onPressed: onPressed,
      child: (hasWdiget)
          ? child
          : Text(text,
              style: TextStyle(
                  color: textColor ?? AppTheme.white,
                  fontWeight: FontWeight.w600,
                  fontSize: responsive.dp(1.6))),
    );
  }
}
