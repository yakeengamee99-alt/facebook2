import 'package:facebook1/core/colors/app_colors.dart';
import 'package:facebook1/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  bool isPasswordHidden = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                Center(
                  child: Image.asset(
                    "assets/images/facebook.png",
                    width: 65,
                    height: 65,
                  ),
                ),

                const SizedBox(height: 80),

                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Mobile Number Or Email Address",
                      hintStyle: TextStyle(color: AppColors.gray),
                      filled: true,
                      fillColor: AppColors.lightGray,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }

                      final emailRegex = RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                      );

                      if (!emailRegex.hasMatch(value)) {
                        return "Invalid email address";
                      }

                      return null;
                    },
                  ),
                ),

                const SizedBox(height: 15),

                // Password Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    obscureText: isPasswordHidden,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: AppColors.gray),
                      fillColor: AppColors.lightGray,
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordHidden = !isPasswordHidden;
                          });
                        },
                        icon: Icon(
                          isPasswordHidden
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.gray,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }

                      final passwordRegex = RegExp(
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).+$',
                      );

                      if (!passwordRegex.hasMatch(value)) {
                        return "Password must contain uppercase, lowercase, number and special character";
                      }

                      return null;
                    },
                  ),
                ),

                const SizedBox(height: 30),

                // Login Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.home,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgetten Password?",
                    style: TextStyle(color: AppColors.gray, fontSize: 14),
                  ),
                ),

                const SizedBox(height: 180),

                // Create Account Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        side: BorderSide(color: AppColors.blue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                Image.asset(
                  "assets/images/Meta Logo.png",
                  width: 110,
                  height: 45,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
