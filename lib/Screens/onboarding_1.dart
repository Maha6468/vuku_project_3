import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onbording_1 extends StatefulWidget {
  const onbording_1({super.key});

  @override
  State<onbording_1> createState() => _onbording_1State();
}

class _onbording_1State extends State<onbording_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFE5F4E2),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Image.asset(
                  "assets/images/Frame.png",
                  height: 260,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  width: double.infinity,
                 // height: 407,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _dot(true),
                          _dot(false),
                          _dot(false),
                        ],
                      ),

                      SizedBox(height: 20),
                      Text("DISCOVER THE JOY OF\nREADING",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 14),
                      Text("Unleash a world of stories tailored to your child’s age and reading level. "
                            "Vuku makes reading fun from the very first page.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          height: 1.4,
                        ),
                      ),
                      Spacer(),

                      // Container(
                      //   height: 70,
                      //   width: 70,
                      //   decoration: BoxDecoration(
                      //     color: const Color(0xFF63C25D),
                      //     shape: BoxShape.circle,
                      //   ),
                      //   child: const Icon(
                      //     Icons.arrow_forward_ios,
                      //     color: Colors.white,
                      //     size: 28,
                      //   ),
                      // ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.amber,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.double_arrow_rounded)
          )
        ],
      ),




    );
  }

  /// dot widget
  Widget _dot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 14 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
