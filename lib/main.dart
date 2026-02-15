import 'package:flutter/material.dart';
import 'package:vuku_project_3/Screens/Sign%20Up%20Flow/Sign_Up.dart';
import 'package:vuku_project_3/Screens/Splash&Onboarding%20flow/onboarding_2.dart';
import 'package:vuku_project_3/Screens/Splash&Onboarding%20flow/splash_screen.dart';
import 'package:vuku_project_3/Screens/log_in.dart';

import 'Screens/Sign Up Flow/verification.dart';
import 'Screens/Splash&Onboarding flow/onboarding_1.dart';
import 'Screens/Splash&Onboarding flow/onboarding_3.dart';

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
      //home: Onboarding_2(),
      //home: Onboarding_3(),
      //home: Log_In(),
      //home: Sign_Up(),
      home: Verification_code(),

    );
  }
}
