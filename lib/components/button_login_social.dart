import 'package:flutter/material.dart';
import 'package:gym/theme/app_theme.dart';

class ButtonLoginSocial extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onTap;

  ButtonLoginSocial(
      {Key? key,
      required this.imagePath,
      required this.label,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.colors.button))),
        child: Row(
          children: [
            Container(
              width: 57,
              height: 57,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      imagePath,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              label,
              style: AppTheme.textStyles.button,
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
