import 'package:flutter/material.dart';
import 'package:vaultkeep/core/colors/app_colors.dart';
import 'package:vaultkeep/features/splash/widget/background_glow_widget.dart';
import 'package:vaultkeep/features/splash/widget/branding_section_widget.dart';
import 'package:vaultkeep/features/splash/widget/progress_section_widget.dart';

class VaultKeepSplashScreen extends StatelessWidget {
  const VaultKeepSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      body: SafeArea(
        child: Column(
          children: const [
            Spacer(),
            BrandingSection(),
            Spacer(),
            ProgressSection(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
