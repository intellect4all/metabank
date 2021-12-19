import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:metabank/core/config/app_config.dart';
import 'package:metabank/core/constants/images.dart';
import 'package:metabank/core/utils/custom_extensions.dart';

class LogoRow extends StatelessWidget {
  const LogoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: SvgPicture.asset(AppImages.logoSvg),
        ).space(right: 20),
        Text(
          'Metabank',
          style: AppConfig.boldLargeTextStyle,
        ),
      ],
    );
  }
}
