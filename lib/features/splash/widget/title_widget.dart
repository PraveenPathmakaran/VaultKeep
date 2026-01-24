import 'package:flutter/material.dart';
import 'package:vaultkeep/core/colors/app_colors.dart';
import 'package:vaultkeep/core/colors/app_constants.dart';
import 'package:vaultkeep/core/colors/app_font_size.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontFamily: AppConstants.appFontFamily,
          fontSize: FontSizes.title,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        children: const [
          TextSpan(text: 'Vault'),
          TextSpan(
            text: 'Keep',
            style: TextStyle(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
