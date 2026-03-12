import 'package:flutter/material.dart';
import 'package:tatto_studio_app/shared/wigdet/layout_page.dart';


class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutPage(
      titlePage: 'Agendamiento',
      child: Column(
        children: [
          
        ],
      ),
    );
  }
}