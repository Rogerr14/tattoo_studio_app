import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/wigdet/card_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(20)
          )
        ),
        title: TitleTextWidget(title: 'Dennise´s Piercing '),
        leading: IconButton(onPressed: (){

        }, icon: const Icon(Icons.menu)),
      ),
      body:  Padding(
        padding:  EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardWidget(imagePath: AppTheme.imageTattooBackground, cardTitle: 'Catálogo de Tattos', onPress: (){},),
              CardWidget(imagePath: AppTheme.imageTattooBackground, cardTitle: 'Catálogo de Piercings', onPress: (){},),
              CardWidget(imagePath: AppTheme.imageTattooBackground, cardTitle: 'Cuidados Generales', onPress: (){},),
            ],
          ),
        ),
      ),
    );
  }
}