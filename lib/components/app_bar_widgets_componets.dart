import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/models/users_model.dart';
import 'package:gym/theme/app_theme.dart';

// class AppBarWidgetsComponents extends AppBar {
//   final String titleText;
//   @override
//   AppBarWidgetsComponents({required this.titleText})
//       : super(
//           backgroundColor: AppTheme.colors.topBar,
//           title: Text(
//             titleText,
//             style: GoogleFonts.roboto(
//                 color: AppTheme.colors.fontColorOrange, fontSize: 25),
//           ),
//           centerTitle: true,
//         );
// }

class AppBarWidgetsComponents extends PreferredSize {
  AppBarWidgetsComponents({
    required UserModel user,
  }) : super(
          preferredSize: Size.fromHeight(144.0),
          child: Stack(
            children: [
              Container(
                height: 231.0,
                decoration: BoxDecoration(
                  color: AppTheme.colors.background,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: Column(
                  children: [
                    Container(
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: _buildUserTile(user),
                        ),
                      ),
                    ),
                    SizedBox(height: 36.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 15.0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );

  static ListTile _buildUserTile(
    UserModel user,
  ) {
    print(user);
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(user.photoUrl!)),
      title: Text(
        user.name!,
        style: GoogleFonts.roboto(
            color: AppTheme.colors.fontColorOrange,
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
