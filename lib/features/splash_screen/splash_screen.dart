import 'package:flutter/material.dart';
import 'package:vaultkeep/core/constants/app_sized_box.dart';
import 'package:vaultkeep/core/constants/app_string.dart';
import 'package:vaultkeep/core/constants/responsive.dart';
import 'package:vaultkeep/core/extension/theme_extension.dart';
import 'package:vaultkeep/core/theme/app_colors.dart';
import 'package:vaultkeep/features/splash_screen/widgets/splash_lock_icon_widget.dart';
import 'package:vaultkeep/features/widgets/app_background_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            children: [
              Spacer(),
              SplashLockIconWidget(),
              AppSizedBox.sizeh30,
              SplashTitleWidget(),
              AppSizedBox.sizeh30,
              SplashParagraphWidget(),
              Spacer(),
              SplashBottomWidget(),
              AppSizedBox.sizeh50,
            ],
          ),
        ),
      ),
    );
  }
}

class SplashBottomWidget extends StatelessWidget {
  const SplashBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: .center,
          children: [
            //lock
            Icon(Icons.lock, color: AppColors.primary, size: 10),
            AppSizedBox.sizew5,

            //text
            Text(AppString.initialize, style: context.text.labelSmall),
          ],
        ),
        AppSizedBox.sizeh15,

        SizedBox(
          width: Responsive.linearProgressIndicator(context),
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ],
    );
  }
}

class SplashParagraphWidget extends StatelessWidget {
  const SplashParagraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.splashAboutWidth(context),
      child: Text(
        AppString.about,
        textAlign: TextAlign.center,
        style: context.text.bodyLarge?.copyWith(color: AppColors.white60),
      ),
    );
  }
}

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: AppString.vault,
        style: context.text.displayLarge,
        children: [
          TextSpan(
            text: AppString.keep,
            style: context.text.displayLarge?.copyWith(
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
