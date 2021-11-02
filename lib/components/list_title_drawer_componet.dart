import 'package:flutter/material.dart';
import 'package:gym/theme/app_theme.dart';

class ListTitleDrawerComponent extends StatelessWidget {
  final IconData icon;
  final String description;
  final String route;

  ListTitleDrawerComponent(this.icon, this.description, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Icon(
          icon,
          color: AppTheme.colors.fontColorOrange,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          description,
          style:
              TextStyle(color: AppTheme.colors.fontColorOrange, fontSize: 20),
        )
      ]),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
