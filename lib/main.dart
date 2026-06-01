import 'package:care_sync/core/theme/app_theme.dart';
import 'package:care_sync/data/routes/custom_app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: CustomAppRoute.approute,
      theme: AppTheme.customtheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
    );
  }
}
