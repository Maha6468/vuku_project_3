import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding_2 extends StatefulWidget {
  const Onboarding_2({super.key});

  @override
  State<Onboarding_2> createState() => _Onboarding_2State();
}

class _Onboarding_2State extends State<Onboarding_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7EAD6),
      body: Column(
        children: [
          const SizedBox(height: 60),
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset("assets/images/Layer 1.png", height: 260),
            ),
          ),

          Expanded(
            flex: 5,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                      bottom: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _dot(false),
                          _dot(true),
                          _dot(false)
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "PERSONALIZED FOR EVERY\N LEARNER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Choose your child's age reading level, and learnig goals to unlock a library designed to support their unique journey.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment(-.01, .7),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF54BB52),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.double_arrow_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget _dot(bool isActive) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    height: 8,
    width: isActive ? 12 : 8,
    decoration: BoxDecoration(
      color: isActive ? Colors.green : Colors.grey.shade300,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
