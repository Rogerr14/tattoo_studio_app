


import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/menu_widget.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';



class LayoutPage extends StatefulWidget {
  final Widget child;
  final String titlePage;
  final bool isHome;
  const LayoutPage({super.key, required this.child, required this.titlePage, this.isHome = false});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen:  MenuWidget(
        controller: zoomDrawerController,
      ),
      angle: 0.0,
      style: DrawerStyle.style1,
      mainScreen: Scaffold(
        backgroundColor: AppTheme.primaryColor,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            
            borderRadius: BorderRadiusGeometry.vertical(bottom: Radius.circular(20))
          ),
          leading: widget.isHome ? IconButton(onPressed: (){
            zoomDrawerController.open?.call();
          }, icon: Icon(Icons.menu, color: AppTheme.primaryColor, size: responsive.dp(3.5),)): null,
          centerTitle: true,
          title:widget.titlePage.isEmpty ?  Image.asset(AppTheme.logo, color: AppTheme.black, width: responsive.wp(25),) :   TitleTextWidget(title: widget.titlePage  , colorTitle: AppTheme.primaryColor, fontSize:  responsive.dp(2), fontWeight: FontWeight.bold,) ,
        ),
        body: widget.child,
      ),
    );

  }
}