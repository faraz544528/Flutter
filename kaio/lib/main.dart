import 'package:flutter/material.dart';
import 'package:kaio/forhotPass.dart';
import 'package:kaio/homeScreen.dart';
import 'package:kaio/homeScreen1.dart';
import 'package:kaio/homeScreen3.dart';
import 'package:kaio/login.dart';
import 'package:kaio/loginErr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homescreen3(),
    );
  }
}
