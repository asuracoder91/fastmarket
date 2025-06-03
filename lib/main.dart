import 'package:fastmarket/service_locator.dart';
import 'package:flutter/material.dart';
import 'core/theme/theme_data.dart';
import 'presentation/routes/routes.dart';

void main() async {
  setLocator();
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
