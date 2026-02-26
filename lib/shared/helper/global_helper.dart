import 'package:flutter/material.dart';

class GlobalHelper {


  static dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
  
}