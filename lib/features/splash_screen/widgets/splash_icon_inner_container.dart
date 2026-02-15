import 'package:flutter/material.dart';
import 'package:vaultkeep/core/constants/border_radius.dart';
import 'package:vaultkeep/core/constants/responsive.dart';
import 'package:vaultkeep/core/theme/app_colors.dart';

class SplashIconInnerContainerWidget extends StatelessWidget {
  const SplashIconInnerContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.innerIconContainer(context),
      width: Responsive.innerIconContainer(context),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppBorderRadius.lg,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
