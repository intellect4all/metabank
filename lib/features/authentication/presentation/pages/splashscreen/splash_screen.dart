import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metabank/core/config/app_config.dart';
import 'package:metabank/core/constants/images.dart';
import 'package:metabank/core/utils/custom_extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
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
          ),
        ),
      ),
    );
  }
}
