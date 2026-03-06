import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tatto_studio_app/module/catalogue/widget/card_catalogue_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/layout_page.dart';



class CataloguePague extends StatefulWidget {
  final String titlePage;
  final List<InformationCatalogue> catalogue;
  const CataloguePague({super.key, required this.titlePage, required this.catalogue});

  @override
  State<CataloguePague> createState() => _CataloguePagueState();
}

class _CataloguePagueState extends State<CataloguePague> {


  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      titlePage: widget.titlePage,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: CarouselSlider(items: widget.catalogue.map(
                 (information) => CardCatalogueWidget(informationCatalogue: information) ,
               ).toList(),
         options: 
         CarouselOptions(
                    onPageChanged: (index, reason) {
                      currentStep = index;
                      setState(() {});
                    },
                    aspectRatio: 0.65,
                    autoPlay: true,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(milliseconds: 4000),
                  ),),
      )
      // child: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       children: widget.catalogue.map(
      //         (information) => CardCatalogueWidget(informationCatalogue: information) ,
      //       ).toList(),
            
      //     ),
      //   ),
      // ),
    );
  }
}