import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 2),() {
     Navigator.pushReplacementNamed(context, HomeScreen.routName);
   },);
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.jpg',fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
