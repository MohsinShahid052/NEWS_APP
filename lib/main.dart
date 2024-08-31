import 'package:flutter/material.dart';
import 'package:news_app/HomeScreen.dart';
import 'package:news_app/login.dart';
import 'package:news_app/onboardingScreen.dart';
import 'package:news_app/profile.dart';
import 'package:news_app/signup.dart';
import 'package:news_app/splashScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
