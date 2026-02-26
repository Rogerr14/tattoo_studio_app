import 'package:flutter/material.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/filled_button_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/text_form_field_widget.dart';


class FormRecoveryPage extends StatefulWidget {
  const FormRecoveryPage({super.key});

  @override
  State<FormRecoveryPage> createState() => _FormRecoveryPageState();
}

class _FormRecoveryPageState extends State<FormRecoveryPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          TextFormFieldWidget(
            hintText: 'correo@correo.com',
          ),
          SizedBox(height: responsive.height * 0.02,),
          FilledButtonWidget(
            text: 'Verificar',
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
}