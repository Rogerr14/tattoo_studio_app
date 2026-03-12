import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/filled_button_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';

class InformationCatalogue {
  final String titleCatalogue;
  final String imagePath;
  final String price;
  final List<String> sizeAvaliables;
  final List<String> recommendateZones;

  InformationCatalogue(
      {required this.titleCatalogue,
      required this.imagePath,
      required this.price,
      required this.sizeAvaliables,
      required this.recommendateZones});
}

class CardCatalogueWidget extends StatefulWidget {
  final InformationCatalogue informationCatalogue;

  const CardCatalogueWidget({super.key, required this.informationCatalogue});

  @override
  State<CardCatalogueWidget> createState() => _CardCatalogueWidgetState();
}

class _CardCatalogueWidgetState extends State<CardCatalogueWidget> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Card(
      color: AppTheme.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: SizedBox(
                      height: responsive.height * 0.4,
                      child: Image.asset(widget.informationCatalogue.imagePath))),
              
              TitleTextWidget(
                title: 'Precio: \$ ${widget.informationCatalogue.price}',
                colorTitle: AppTheme.white,
                fontSize: responsive.dp(2),
                fontWeight: FontWeight.bold,
              ),
              Row(
                children: [
                  Icon(
                    Icons.straighten_outlined,
                    color: AppTheme.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ...widget.informationCatalogue.sizeAvaliables
                      .map((size) => TitleTextWidget(
                            title: '$size ',
                            colorTitle: AppTheme.white,
                          ))
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TitleTextWidget(
                  title: 'Zonas recomendadas',
                  colorTitle: AppTheme.white,
                  fontSize: responsive.dp(1.8),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
          
              children:
              widget.informationCatalogue.recommendateZones.map((zone) =>  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: AppTheme.white.withValues(alpha: 0.2),
                    border: Border.all(
                      color: AppTheme.white,
                      width: 1
                    ),
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TitleTextWidget(title: zone, colorTitle: AppTheme.white, fontWeight: FontWeight.bold,),
                  ),
                ),
              ),).toList() ,),
              const SizedBox(height: 25,),
              FilledButtonWidget(onPressed: (){
                
              }, text: 'Agendar sesión',)
            ],
          ),
        ),
      ),
    );
  }
}
