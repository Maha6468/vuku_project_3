import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

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





            ],
          ),
        ),
      ),

    );
  }
}
