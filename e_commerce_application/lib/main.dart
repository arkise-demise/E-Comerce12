import 'package:e_commerce_application/core/configs/theme/app_theme.dart';
import 'package:e_commerce_application/presentation/splash/pages/splash.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce Application',
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
