import 'package:flutter/material.dart';
import 'package:vaultkeep/features/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        // colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const VaultKeepSplashScreen(),
      themeMode: ThemeMode.dark,
       darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      
    );
  }
}

