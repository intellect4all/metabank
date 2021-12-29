import 'package:flutter/material.dart';
import 'package:metabank/core/common_widgets/expanded_button.dart';
import 'package:metabank/core/common_widgets/logo_row.dart';
import 'package:metabank/core/config/app_config.dart';
import 'package:metabank/core/constants/colors.dart';
import 'package:metabank/core/utils/custom_extensions.dart';
import 'package:metabank/core/utils/routes.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const LogoRow().space(top: 120),
            Expanded(
              child: Center(
                child: Text(
                  'Banking for the NextGen',
                  textAlign: TextAlign.center,
                  style: AppConfig.loginScreenTextStyle(),
                ),
              ).space(left: 30, right: 30),
            ),
            ExpandedButton(
              text: 'Create Account',
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.signUp);
              },
            ).space(bottom: 5),
            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: AppConfig.buttonWhiteTextStyle(
                  fontColor: AppColors.primaryColor,
                ),
              ),
            ).space(bottom: 50),
          ],
        ).space(left: 20, right: 20),
      ),
    );
  }
}
