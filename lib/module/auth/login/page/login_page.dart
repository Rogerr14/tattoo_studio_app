import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/auth/login/widget/form_login.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/filled_button_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/text_form_field_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {







  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => false,
      child: Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: responsive.height * 0.3,
                width: responsive.width * 0.5,
                child: Center(child: Image.asset(AppTheme.logo))),
              
              Container(
                height: responsive.height * 0.7,
                width: responsive.width,
                decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(50))
                ),
                child: const FormLogin()
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}