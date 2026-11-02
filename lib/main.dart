import 'package:facebook1/core/routes/app_routes.dart';
import 'package:facebook1/screens/home_screens.dart';
import 'package:facebook1/screens/login_screens.dart';
import 'package:facebook1/screens/splash_screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.splash: (context) => SplashScreens(),

        AppRoutes.login: (context) => LoginScreens(),
        AppRoutes.home: (context) => HomeScreens(),
      },
      initialRoute: AppRoutes.splash,
    );
  }
}
