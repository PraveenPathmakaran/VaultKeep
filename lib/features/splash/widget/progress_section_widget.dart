import 'package:flutter/material.dart';
import 'package:vaultkeep/core/colors/app_colors.dart';
import 'package:vaultkeep/core/colors/app_constants.dart';
import 'package:vaultkeep/core/colors/app_font_size.dart';
import 'package:vaultkeep/features/splash/widget/progressbar_widget.dart';

class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.lock_open, color: AppColors.primary, size: 16),
            SizedBox(width: 8),
            Text(
              'Initializing secure environment...',
              style: TextStyle(
                fontFamily: AppConstants.appFontFamily,
                fontSize: FontSizes.body,
                color: AppColors.white80,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const ProgressBar(progress: 0.35),
        const SizedBox(height: 32),
        const Text(
          'END-TO-END ENCRYPTED',
          style: TextStyle(
            fontSize: FontSizes.caption,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            color: AppColors.white30,
          ),
        ),
      ],
    );
  }
}
