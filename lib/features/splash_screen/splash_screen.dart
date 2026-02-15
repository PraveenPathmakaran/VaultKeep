import 'package:flutter/material.dart';
import 'package:vaultkeep/features/widgets/app_background_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(child: Scaffold(backgroundColor: Colors.transparent));
  }
}
