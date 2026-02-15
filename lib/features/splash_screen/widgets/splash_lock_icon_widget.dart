import 'package:flutter/material.dart';
import 'package:vaultkeep/core/constants/responsive.dart';
import 'package:vaultkeep/core/theme/app_colors.dart';
import 'package:vaultkeep/features/splash_screen/widgets/splash_icon_container_widget.dart';
import 'package:vaultkeep/features/splash_screen/widgets/splash_icon_inner_container.dart';
import 'package:vaultkeep/features/splash_screen/widgets/splash_shield_shape_widget.dart';

class SplashLockIconWidget extends StatelessWidget {
  const SplashLockIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SplashIconContainerWidget(),
        SplashIconInnerContainerWidget(),
        SplashShieldShapeWidget(
          height: Responsive.splashShieldHeight(context),
          width: Responsive.splashShieldWidth(context),
        ),
        Icon(Icons.lock, color: AppColors.grey),
      ],
    );
  }
}
