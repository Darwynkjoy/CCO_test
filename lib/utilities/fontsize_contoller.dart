import 'package:flutter/material.dart';

class ResponsiveFont {
  static double getFontSize(BuildContext context, double baseFontSize) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust multiplier as needed
    if (screenWidth < 600) {
      return baseFontSize;
    } else if (screenWidth < 900) {
      return baseFontSize * 1.2;
    } else {
      return baseFontSize * 1.4;
    }
  }
}