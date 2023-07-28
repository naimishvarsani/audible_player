import 'package:flutter/material.dart';

class AppColor {
  static Color bgcolor = const Color(0xFF22222c);
  static Color primarylinear = const Color(0xFFc608ff);
  static Color secondrylinear = const Color(0xFF4d17e2);
  static Color boxcolor = const Color(0xFF9B9B9B);
  static Color whitecolor = const Color(0xFFffffff);
}

mixin PrefernceKey {
  static String isIntroductionScreenLoaded = "isIntroductionScreenLoaded";
}

class AppFont {
  static String semibold = 'montserratsemibold'; // 600: 'SemiBold',
  static String medium = 'MontserratMedium'; // 500: 'Medium',
  static String bold = 'MontserratBold'; // 700: 'Bold',
  static String regular = 'MontserratRegular'; // 400: 'Regular',
}

mixin AppImage {
  static String imges = "assets/images/";
}
