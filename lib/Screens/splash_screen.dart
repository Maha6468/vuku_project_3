
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF54BB52),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Vector.png",
                  height: 119,
                  width: 119,
                ),
                SizedBox(height: 10),
                Image.asset(
                  "assets/images/Vector (1).png",
                  height: 43,
                  width: 145,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            top: 600,
            child: Center(
              child: RotationTransition(
                turns: _controller,
                child: Image.asset(
                  "assets/images/Loading Pro.png",
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
