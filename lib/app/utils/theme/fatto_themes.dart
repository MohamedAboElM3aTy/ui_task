import 'package:flutter/material.dart';
import 'package:ui_task/app/constants/fatto_app_colors.dart';

ThemeData fattoTheme() {
  return ThemeData(
    colorSchemeSeed: FattoAppColors.mainColor,
    scaffoldBackgroundColor: Colors.grey[200],
  );
}
