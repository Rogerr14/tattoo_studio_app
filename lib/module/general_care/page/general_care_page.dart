import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/layout_page.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';




class GeneralCarePage extends StatefulWidget {
  const GeneralCarePage({super.key});

  @override
  State<GeneralCarePage> createState() => _GeneralCarPageState();
}

class _GeneralCarPageState extends State<GeneralCarePage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return LayoutPage(
      titlePage: 'Cuidado General',
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: responsive.height * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleTextWidget(title: 'Cuidados Generales', colorTitle: AppTheme.white, fontSize: responsive.dp(2),),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset(AppTheme.imageGeneralCare, fit: BoxFit.fitHeight,)),
                const SizedBox(height: 10,),
                TitleTextWidget(title: 'Zonas de perforación', colorTitle: AppTheme.white, fontSize: responsive.dp(2),),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset(AppTheme.imageZonePiercing, fit: BoxFit.fitHeight,)),
            ],
          ),
        ),
      )
    );
  }
}