import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/helper/global_helper.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.hintText,
    this.maxHeigth = double.infinity,
    this.maxWidth = double.infinity,
    this.controller,
    this.validator,
    this.inputFormatters,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.fillColor = Colors.white,
    this.fontWeightHintText = FontWeight.bold,
    this.maxLines = 1,
    this.showShading = true,
    this.borderWith = 1,
    this.focusNode,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.enabled,
    this.initialValue,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onSaved,
  });

  final double maxHeigth;
  final double maxWidth;
  final TextInputType? keyboardType;
  final TextAlign textAlign;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color? fillColor;
  final FontWeight? fontWeightHintText;
  final int? maxLines;
  final bool? showShading;
  final double? borderWith;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool? readOnly;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final String? initialValue;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final void Function(String?)? onSaved;
  //final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    //final theme = AppTheme();
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      initialValue: initialValue,
      readOnly: readOnly!,
      enabled: enabled,
      focusNode: focusNode,
      maxLines: maxLines,
      obscuringCharacter: '*',
      obscureText: obscureText,
      style: TextStyle(
          color: AppTheme.black,
          fontWeight: FontWeight.w700,
          fontSize: responsive.isTablet ? responsive.dp(1.45) : 16),
      //cursorColor: AppTheme.primaryColor,

      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      validator: validator,
      controller: controller,
      onTapOutside: (pointerDownEvent) {
        GlobalHelper.dismissKeyboard(context);
        //FocusScope.of(context).unfocus(disposition: UnfocusDisposition.previouslyFocusedChild);
      },
      textAlign: textAlign,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          errorStyle: TextStyle(
              color: AppTheme.error,
              fontSize: responsive.isTablet ? responsive.dp(1.45) : 12),
          filled: true,
          fillColor: !readOnly! ? fillColor : AppTheme.disabledTextFormField,
          hintText: hintText,
          hintStyle: TextStyle(
              color: const Color(0xFFAEAEAE),
              fontWeight: FontWeight.w500,
              fontSize: responsive.isTablet ? responsive.dp(1.45) : 16),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          alignLabelWithHint: true,
          isCollapsed: false,
          isDense: true,
          // hintStyle: TextStyle(
          //     fontWeight: fontWeightHintText, color: AppTheme.hinText),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeigth),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: borderWith!, color: AppTheme.black),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: borderWith!, color: AppTheme.black),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: borderWith!, color: AppTheme.black),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: borderWith!, color: AppTheme.error),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: responsive.isTablet ? responsive.wp(0.3) : borderWith!,
                color: AppTheme.error),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
