import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF54BB52),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 200,),
                Image.asset("assets/images/Vector.png",height: 119,width: 119,),
                Image.asset("assets/images/Vector (1).png",height: 43,width: 145,),
              ],
            ),
          ),
          Image.asset("assets/images/Loading Pro.png"),


        ],
      )
    );
  }
}
