import 'package:flutter/material.dart';
import 'package:vuku_project_3/Screens/Splash&Onboarding%20flow/onboarding_2.dart';
import 'package:vuku_project_3/Screens/Splash&Onboarding%20flow/splash_screen.dart';

import 'Screens/Splash&Onboarding flow/onboarding_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: Onboarding_1(),
      home: Onboarding_2(),

    );
  }
}
