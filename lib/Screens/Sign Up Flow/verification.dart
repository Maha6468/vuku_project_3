import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:vuku_project_3/Screens/Sign%20Up%20Flow/varification_popup.dart';

import '../../Custom_Widget/elevated_Button.dart';

class Verification_code extends StatefulWidget {
  const Verification_code({super.key});

  @override
  State<Verification_code> createState() => _Verification_codeState();
}

class _Verification_codeState extends State<Verification_code> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
    );

    return Scaffold(

      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Verification Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Enter the verification code that we have sent to your email",style: TextStyle(color: Colors.grey,fontSize: 15),),
              SizedBox(height: 30,),
              Center(
                child: Pinput(
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  controller: pinController,
                  focusNode: focusNode,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index)=>SizedBox(width: 20,),
                  onCompleted: (pin) {
                    debugPrint('Entered PIN: $pin');
                  },
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton_cust(text: 'Sign Up', width: 320,height: 50,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(),
                    ),
                  );
                },
              ),

              SizedBox(height: 20,),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: "Re-send code in  ",style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "0:43",
                            style:
                            const TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 17),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("hello");
                              }),
                      ])),




            ],
          ),
        ),
      ),

    );
  }
}
