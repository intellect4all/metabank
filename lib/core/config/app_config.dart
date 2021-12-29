import 'package:flutter/material.dart';
import 'package:metabank/core/constants/colors.dart';

class AppConfig {
  static const double mainRightSpacing = 10;

  static TextStyle boldLargeTextStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    // fontFamily: 'Gilroy',
    fontSize: 35,
    height: 45 / 35,
    color: AppColors.white,
  );

  static TextStyle buttonWhiteTextStyle({Color fontColor = AppColors.white}) =>
      TextStyle(
        fontWeight: FontWeight.w300,
        // fontFamily: 'Gilroy',
        fontSize: 18,
        height: 24 / 20,
        color: fontColor,
      );

  static TextStyle loginScreenTextStyle({double fontSize = 35}) => TextStyle(
        fontWeight: FontWeight.w300,
        // fontFamily: 'Gilroy',
        fontSize: fontSize,
        height: 40 / 34,
        color: AppColors.white,
      );
}
