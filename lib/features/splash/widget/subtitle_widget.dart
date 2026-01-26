import 'package:flutter/material.dart';
import 'package:vaultkeep/core/colors/app_colors.dart';
import 'package:vaultkeep/core/colors/app_constants.dart';
import 'package:vaultkeep/core/colors/app_font_size.dart';
import 'package:vaultkeep/core/colors/app_string.dart';

class AppSubtitle extends StatelessWidget {
  const AppSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Text(
        AppString.about,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: AppConstants.appFontFamily,
          fontSize: FontSizes.subtitle,
          color: AppColors.white60,
        ),
      ),
    );
  }
}
