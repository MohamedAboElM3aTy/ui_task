import 'package:flutter/material.dart';

extension FattoContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;
}
