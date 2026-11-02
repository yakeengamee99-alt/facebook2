import 'package:facebook1/core/colors/app_colors.dart';
import 'package:facebook1/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      },
      child: Scaffold(
        body: Container(
          color: AppColors.white,
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),

              Image.asset("assets/images/facebook.png", width: 80, height: 80),

              const Spacer(),

              Image.asset("assets/images/meta.png", width: 100, height: 45),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
