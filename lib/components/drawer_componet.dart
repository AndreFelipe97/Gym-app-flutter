import 'package:flutter/material.dart';
import 'package:gym/models/users_model.dart';
import 'package:gym/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'list_title_drawer_componet.dart';

class DraweComponent extends StatefulWidget {
  @override
  State<DraweComponent> createState() => _DraweComponentState();
}

class _DraweComponentState extends State<DraweComponent> {
  String photoUrl = '';

  void getData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      photoUrl = prefs.getString('userPhotoUrl') as String;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
                  child: photoUrl == ''
                      ? Icon(
                          Icons.account_circle,
                          color: AppTheme.colors.fontColorOrange,
                          size: 105,
                        )
                      : CircleAvatar(
                          backgroundImage: NetworkImage(photoUrl),
                          radius: 70,
                        )),
            ),
            ListTitleDrawerComponent(Icons.home, 'Home', "/"),
          ],
        ),
      ),
    );
  }
}
