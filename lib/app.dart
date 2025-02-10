import 'package:flutter/material.dart';
import 'package:harmony_hub/core/navigation/app_router.dart';
// import 'package:harmony_hub/core/themes/dark_theme.dart';
import 'package:harmony_hub/core/themes/light_theme.dart';
// import 'package:harmony_hub/features/home/presentation/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: goRouter,
      // home: HomePage(),
    );
  }
}