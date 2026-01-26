import 'package:flutter/material.dart';
import 'package:vaultkeep/core/colors/app_colors.dart';

class VaultIcon extends StatelessWidget {
  const VaultIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary20,
            AppColors.primary10,
          ],
        ),
        border: Border.all(color: AppColors.primary20),
      ),
      child: Container(
        width: 96,
        height: 96,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(
          Icons.lock,
          size: 64,
          color: Colors.white,
        ),
      ),
    );
  }
}
