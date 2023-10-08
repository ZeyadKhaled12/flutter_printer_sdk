import 'package:flutter/material.dart';
import 'package:flutter_printer_sdk/features/app_side/presentation/screens/login_screen.dart';
import 'package:flutter_printer_sdk/features/app_side/presentation/screens/splash_screen.dart';

import 'core/services/services_locator.dart';
import 'features/web_side/presentation/screens/app_web_view_screen.dart';
import 'features/web_side/presentation/screens/windows_web_view_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
