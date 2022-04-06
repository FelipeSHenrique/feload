import 'package:feload/utils/color.dart';
import 'package:flutter/material.dart';

class AppTheme {

  final Color primaryColor = const Color(0xff24344C);
  final Color secundaryColor = const Color(0xff317DE5);
  final Color background = const Color(0xff142740);
  final Color textColor = Colors.white;
  final Color iconColor = Colors.white;

  ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: createMaterialColor(
          primaryColor,
        ),
      ).copyWith(secondary: secundaryColor),
      scaffoldBackgroundColor: background,
      iconTheme: IconThemeData(color: iconColor),
      textTheme: ThemeData.light().textTheme.copyWith(
        headline6: TextStyle(
          color: textColor
        ),
        bodyText2: TextStyle(
          color: textColor
        )
      )
    );
  }
}
