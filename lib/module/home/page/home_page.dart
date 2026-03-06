import 'package:flutter/material.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/catalogue/page/catalogue_pague.dart';
import 'package:tatto_studio_app/module/catalogue/widget/card_catalogue_widget.dart';
import 'package:tatto_studio_app/module/general_care/page/general_care_page.dart';
import 'package:tatto_studio_app/shared/wigdet/card_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/layout_page.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  final List<InformationCatalogue> cataloguePiercings = [
    InformationCatalogue(titleCatalogue: 'Labre', imagePath: AppTheme.piercing01, price: "30", sizeAvaliables: [
      "2 cm"
    ], recommendateZones: [
      "Labio"
    ]),
    
    InformationCatalogue(titleCatalogue: 'CARTILAGO', imagePath: AppTheme.piercing02, price: "30", sizeAvaliables: [
      "4 cm"
    ], recommendateZones: [
      "Oreja"
    ]),
    InformationCatalogue(titleCatalogue: '', imagePath: AppTheme.piercing03, price: "30", sizeAvaliables: [
      "4 cm"
    ], recommendateZones: [
      "Oreja"
    ]),
    InformationCatalogue(titleCatalogue: 'CARTILAGO', imagePath: AppTheme.piercing04, price: "30", sizeAvaliables: [
      "4 cm"
    ], recommendateZones: [
      "Oreja"
    ]),
    InformationCatalogue(titleCatalogue: 'CARTILAGO', imagePath: AppTheme.piercing05, price: "30", sizeAvaliables: [
      "4 cm"
    ], recommendateZones: [
      "Lengua"
    ]),
    InformationCatalogue(titleCatalogue: 'Lowbret', imagePath: AppTheme.piercing06, price: "30", sizeAvaliables: [
      "3 cm"
    ], recommendateZones: [
      "Labio Derecho", "Labio Izquierdo"
    ]),
    InformationCatalogue(titleCatalogue: 'CARTILAGO', imagePath: AppTheme.piercing07, price: "30", sizeAvaliables: [
      "4 cm"
    ], recommendateZones: [
      "Oreja"
    ]),
    
  ];
  final List<InformationCatalogue> catalogueTattos = [
      InformationCatalogue(titleCatalogue: 'Mandala', imagePath: AppTheme.tatto01, price: "50", sizeAvaliables: [
      "14 cm", "20 cm"
    ], recommendateZones: [
      "Espalda", "Pecho"
    ]),
      InformationCatalogue(titleCatalogue: 'Mandala', imagePath: AppTheme.tatto02, price: "50", sizeAvaliables: [
      "14 cm", "20 cm"
    ], recommendateZones: [
      "Espalda", "Pecho"
    ]),
      InformationCatalogue(titleCatalogue: 'Mandala', imagePath: AppTheme.tatto03, price: "50", sizeAvaliables: [
      "14 cm", "20 cm"
    ], recommendateZones: [
      "Espalda", "Pecho"
    ]),
      InformationCatalogue(titleCatalogue: 'Mandala', imagePath: AppTheme.tatto04, price: "50", sizeAvaliables: [
      "14 cm", "20 cm"
    ], recommendateZones: [
      "Espalda", "Pecho"
    ]),
      InformationCatalogue(titleCatalogue: 'Mandala', imagePath: AppTheme.tatto05, price: "50", sizeAvaliables: [
      "14 cm", "20 cm"
    ], recommendateZones: [
      "Espalda", "Pecho"
    ]),
      InformationCatalogue(titleCatalogue: 'Mandala', imagePath: AppTheme.tatto07, price: "50", sizeAvaliables: [
      "14 cm", "20 cm"
    ], recommendateZones: [
      "Espalda", "Pecho"
    ])
  ];



  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      isHome: true,
      titlePage: '',
      child:  Padding(
        padding:  EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CardWidget(imagePath: AppTheme.imageTattooBackground, cardTitle: 'Catálogo de Tattos', onPress: (){
                Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) =>  CataloguePague(titlePage: 'Catálogo de Tattos', catalogue: catalogueTattos,),));
              },),
              CardWidget(imagePath: AppTheme.imagePiercingBackground, cardTitle: 'Catálogo de Piercings', onPress: (){
                 Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) =>  CataloguePague(titlePage: 'Catálogo de Piercings', catalogue: cataloguePiercings,),));
              },),
              CardWidget(imagePath: AppTheme.imageTattooBackground, cardTitle: 'Cuidados Generales', onPress: (){
                Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => GeneralCarePage(),));
              },),
            ],
          ),
        ),
      ),
    );
  }
}