import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedButton_cust extends StatelessWidget {

  const ElevatedButton_cust({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
        onPressed: () {

      }, child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 16),),

      ),
    );
  }
}



//
// import 'package:flutter/material.dart';
//
// class Elevated_Button extends StatelessWidget {
//   final String text;
//   final double? width;
//   final double? height;
//   final VoidCallback? onPressed;
//
//   const Elevated_Button({super.key, required this.text, required this.width, this.height, this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width:width,height:height,
//       child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.deepPurpleAccent,
//               shape:RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)
//               )
//           ),
//           onPressed: onPressed, child:Text(text,style: TextStyle(color: Colors.white),)),
//     );
//   }
// }