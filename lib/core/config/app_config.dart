import 'package:flutter/material.dart';
import 'package:metabank/core/constants/colors.dart';

class AppConfig {
  static const double mainRightSpacing = 10;

  static TextStyle boldLargeTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Gilroy',
    fontSize: 35,
    height: 45 / 35,
    color: AppColors.white,
  );

  static TextStyle buttonWhiteTextStyle = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Gilroy',
    fontSize: 20,
    height: 20 / 24,
    color: AppColors.white,
  );
}
