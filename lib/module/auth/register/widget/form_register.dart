

import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/home/page/home_page.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/helper/secure_storage.dart';
import 'package:tatto_studio_app/shared/model/user_model.dart';
import 'package:tatto_studio_app/shared/wigdet/filled_button_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/text_form_field_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';


class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {

  bool _obscureText = false;

  final formRegister = GlobalKey<FormState>();

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _password2Controller =  TextEditingController();
  
  void _register(){
    if(formRegister.currentState!.validate()){
      SecureStorage().setUserCredentials(UserModel(user: 
      _userController.text, password: _passwordController.text));

      Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => HomePage(),));
    }
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Form(
        key: formRegister,
        child: Column(
          children: [
             Align(
                alignment: AlignmentGeometry.centerLeft,
                child: TitleTextWidget(
                  title: 'Registrate',
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
              validator: (value) {
                if(_password2Controller.text != _passwordController.text){
                  return 'Las contraseñas no coinciden';
                }
                return null;
              },
              suffixIcon: IconButton(onPressed: (){
                _obscureText = !_obscureText;
                setState(() {
                  
                });
              },icon: Icon( _obscureText ?  Icons.remove_red_eye_outlined  : Icons.visibility_off_outlined)) ,
            ),
             SizedBox(
              height: responsive.height * 0.02,
            ),
            TextFormFieldWidget(
              controller: _password2Controller,
              hintText: 'Repita la contraseña',
              obscureText: _obscureText,
              validator: (value) {
                if(_password2Controller.text != _passwordController.text){
                  return 'Las contraseñas no coinciden';
                }
                return null;
              },
              suffixIcon: IconButton(onPressed: (){
                _obscureText = !_obscureText;
                setState(() {
                  
                });
              },icon: Icon( _obscureText ?  Icons.remove_red_eye_outlined  : Icons.visibility_off_outlined)) ,
            ),
             SizedBox(
              height: responsive.height * 0.05,
            ),
            FilledButtonWidget(
              onPressed: _register,
              text: 'Registrame',
            ),
            const SizedBox(height: 20,),
            Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: TitleTextWidget(
                title: 'Regresar',
                colorTitle: AppTheme.black,
                textDecoration: TextDecoration.underline,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}