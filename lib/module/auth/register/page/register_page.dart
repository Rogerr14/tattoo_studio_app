import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/auth/login/widget/form_login.dart';
import 'package:tatto_studio_app/module/auth/register/widget/form_register.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
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
                child: FormRegister()
              ),
            ],
          ),
        ),
        
      );
  }
}