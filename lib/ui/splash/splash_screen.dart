import 'package:flutter/material.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = 'splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider=Provider.of<ThemeProvider>(context);
    bool isDark=themeProvider.isDarkEnabled();
   Future.delayed(Duration(seconds: 2),() {
     Navigator.pushReplacementNamed(context, HomeScreen.routName);
   },);
    return Scaffold(
      body: Image.asset("assets/images/splash.png",fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
