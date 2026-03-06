import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/auth/recovery/page/recovery_page.dart';
import 'package:tatto_studio_app/module/auth/register/page/register_page.dart';
import 'package:tatto_studio_app/module/home/page/home_page.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/filled_button_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/text_form_field_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool _obscureText = false;

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  void _login()async{
    if(_userController.text == "hugo@hu.com" && _passwordController.text == '1234'){
        Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),));
    }
  }



  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Align(
              alignment: AlignmentGeometry.centerLeft,
              child: TitleTextWidget(
                title: 'Iniciar Sesión',
                fontSize: responsive.dp(2),
                colorTitle: AppTheme.primaryColor,
              )),
          SizedBox(
            height: responsive.height * 0.04,
          ),
          TextFormFieldWidget(
            controller: _userController,
            hintText: 'correo@correo.com',
          ),
          SizedBox(
            height: responsive.height * 0.02,
          ),
          TextFormFieldWidget(
            controller: _passwordController,
            hintText: 'Contraseña',
            obscureText: _obscureText,
            suffixIcon: IconButton(onPressed: (){
              _obscureText = !_obscureText;
              setState(() {
                
              });
            },icon: Icon( _obscureText ?  Icons.remove_red_eye_outlined  : Icons.visibility_off_outlined)) ,
          ),
          SizedBox(
            height: responsive.height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const RecoveryPage(),));
              },
              child: TitleTextWidget(
                title: 'Olvidé mi contraseña',
                colorTitle: AppTheme.black,
                textDecoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: responsive.height * 0.05,
          ),
          FilledButtonWidget(
            onPressed: _login,
            text: 'Iniciar sesión',
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => RegisterPage(),));
            },
            child: TitleTextWidget(title: 'No tengo cuenta aún', colorTitle: AppTheme.black, textDecoration: TextDecoration.underline,)),
          SizedBox(
            height: responsive.height * 0.15,
          ),
          TitleTextWidget(
            title: 'Powered by HU',
            colorTitle: AppTheme.black,
            fontSize: 10,
          ),
        ],
      ),
    );
  }
}
