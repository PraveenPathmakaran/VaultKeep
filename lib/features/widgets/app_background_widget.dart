import 'package:flutter/material.dart';
import 'package:vaultkeep/core/theme/app_gradients.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final gradients = Theme.of(context).extension<AppGradients>()!;
    return DecoratedBox(
      decoration: BoxDecoration(gradient: gradients.backgroundGradient),
      child: child,
    );
  }
}
