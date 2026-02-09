import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding_3 extends StatefulWidget {
  const Onboarding_3({super.key});

  @override
  State<Onboarding_3> createState() => _Onboarding_2State();
}

class _Onboarding_2State extends State<Onboarding_3> {
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
              child: Image.asset("assets/images/OBJECTS.png", height: 260),
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
                        "TRACK PROGRESS & EARM \N REWARDS",
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
                          "Stay motivated with badges, quizzes,and a progress dashboard - turing reading into an exciting adventure every day.",
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
