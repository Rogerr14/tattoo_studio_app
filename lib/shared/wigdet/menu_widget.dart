import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tatto_studio_app/env/theme/app_theme.dart';
import 'package:tatto_studio_app/module/auth/login/page/login_page.dart';
import 'package:tatto_studio_app/module/general_care/page/general_care_page.dart';
import 'package:tatto_studio_app/shared/helper/responsive.dart';
import 'package:tatto_studio_app/shared/wigdet/title_text_widget.dart';

class MenuWidget extends StatefulWidget {
  final ZoomDrawerController controller;
  const MenuWidget({super.key, required this.controller});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Container(
        width: responsive.width * 0.3,
        decoration: BoxDecoration(
          color: AppTheme.black,
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(20),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: AppTheme.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TitleTextWidget(
                        title: 'Hugo Ushca',
                        colorTitle: AppTheme.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: responsive.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        widget.controller.close?.call();
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      GeneralCarePage(),
                            ));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.select_all,
                            color: AppTheme.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TitleTextWidget(
                            title: 'Cuidados Generales',
                            colorTitle: AppTheme.white,
                            fontSize: responsive.dp(1.5),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsive.height * 0.6,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: IconButton(
                      icon: Row(children: [
                        Icon(
                          Icons.exit_to_app,
                          color: AppTheme.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TitleTextWidget(
                          title: 'Cerrar sesión',
                          colorTitle: AppTheme.white,
                        )
                      ]),
                      onPressed: (){
                        Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
