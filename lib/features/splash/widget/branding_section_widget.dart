import 'package:flutter/material.dart';
import 'package:vaultkeep/features/splash/widget/subtitle_widget.dart';
import 'package:vaultkeep/features/splash/widget/title_widget.dart';
import 'package:vaultkeep/features/splash/widget/vault_icon_widget.dart';

class BrandingSection extends StatelessWidget {
  const BrandingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        VaultIcon(),
        SizedBox(height: 32),
        AppTitle(),
        SizedBox(height: 16),
        AppSubtitle(),
      ],
    );
  }
}
