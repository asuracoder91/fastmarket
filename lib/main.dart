import 'package:flutter/material.dart';
import 'core/theme/theme_data.dart';
import 'dependency_injection.dart';
import 'presentation/routes/routes.dart';

void main() async {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: CustomThemeData.themeData,
    );
  }
}
