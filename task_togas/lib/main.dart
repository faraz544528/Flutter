import 'package:flutter/material.dart';
import 'package:task_togas/ForgetPass.dart';

import 'package:task_togas/OnboardingPage2.dart';
import 'package:task_togas/Otp.dart';
import 'package:task_togas/ResetYourPassScreen.dart';
import 'package:task_togas/Signup.dart';
import 'package:task_togas/SplashScreen.dart';
import 'package:task_togas/homeScreen.dart';
import 'package:task_togas/loginScreen.dart';
import 'package:task_togas/onboardingPage3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Homescreen());
  }
}
