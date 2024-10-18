import 'package:flutter/material.dart';
import 'package:islami/ui/hadeth_details/hadeth_details.dart';
import 'package:islami/ui/home/home_screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/style/theme.dart';
import 'package:islami/ui/sura_details/sura_details.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routName: (_) => SplashScreen(),
        HomeScreen.routName: (_) => HomeScreen(),
        SuraDetails.routName:(_)=>SuraDetails(),
        HadethDetails.routName:(_)=>HadethDetails(),
      },
      initialRoute: HomeScreen.routName,
      theme: MyTheme.lightTheme,

    );
  }
}
