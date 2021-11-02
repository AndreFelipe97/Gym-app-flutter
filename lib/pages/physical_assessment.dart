import 'package:flutter/material.dart';
import 'package:gym/components/app_bar_widgets_componets.dart';
import 'package:gym/components/drawer_componet.dart';
import 'package:gym/theme/app_theme.dart';

class PhysicalAssessmentPage extends StatelessWidget {
  PhysicalAssessmentPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final invalidData = [
    {"Date": "04.01.2016", "Close": 126.12},
    {"Date": "05.01.2016", "Close": 125.688},
    {"Date": "06.01.2016", "Close": 119.704},
    {"Date": "07.01.2016", "Close": 120.19},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetsComponents(titleText: "Avalição física"),
      drawer: DraweComponent(),
      body: Container(
        decoration: BoxDecoration(color: AppTheme.colors.background),
      ),
    );
  }
}
