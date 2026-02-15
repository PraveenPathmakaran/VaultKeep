import 'package:flutter/material.dart';
import 'package:vaultkeep/core/constants/app_border.dart';
import 'package:vaultkeep/core/constants/border_radius.dart';
import 'package:vaultkeep/core/constants/responsive.dart';
import 'package:vaultkeep/core/theme/app_colors.dart';

class SplashIconContainerWidget extends StatelessWidget {
  const SplashIconContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.iconContainer(context),
      width: Responsive.iconContainer(context),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppBorderRadius.lg,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primaryBlue20, // 20% opacity
              AppColors.primaryBlue05, // 5% opacity
            ],
          ),
          border: Border.all(
            color: AppColors.primaryBlue20,
            width: AppBorder.sm,
          ),
        ),
      ),
    );
  }
}
