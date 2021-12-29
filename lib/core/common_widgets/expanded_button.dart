import 'package:flutter/material.dart';
import 'package:metabank/core/config/app_config.dart';
import 'package:metabank/core/constants/colors.dart';
import 'package:metabank/injection_container.dart';

class ExpandedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const ExpandedButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(15),
            ),
            child: Text(
              text,
              style: AppConfig.buttonWhiteTextStyle(),
            ),
          ),
        ),
      ],
    );
  }
}
