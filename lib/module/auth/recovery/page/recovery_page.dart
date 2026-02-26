import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/auth/recovery/widget/form_recovery_page.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';


class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Column(
        children: [
          SizedBox(height: responsive.height* 0.2,),
          Container(
            height: responsive.height  * 0.8,
            width: responsive.width,
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(50))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentGeometry.centerLeft,
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon:  Icon(Icons.arrow_back_ios, color: AppTheme.black,))),
                ),
                const FormRecoveryPage()
      
              ],
            )
          )
        ],
      ),
    );
  }
}