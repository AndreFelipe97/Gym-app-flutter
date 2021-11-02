import 'package:flutter/material.dart';
import 'package:gym/theme/app_theme.dart';

import 'list_title_drawer_componet.dart';

class DraweComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: AppTheme.colors.background),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppTheme.colors.background),
              child: Center(
                  child: Icon(
                Icons.account_circle,
                color: AppTheme.colors.fontColorOrange,
                size: 105,
              )),
            ),
            ListTitleDrawerComponent(Icons.home, 'Home', "/"),
            ListTitleDrawerComponent(
                Icons.insert_chart, 'Avaliação física', "/physical-assessment"),
          ],
        ),
      ),
    );
  }
}
