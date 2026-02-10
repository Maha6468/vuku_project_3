import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Custom_Widget/elevated_Button.dart';
import '../../Custom_Widget/text_from_field.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Text("Create an Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("Please Fill this detail to create an account",style: TextStyle(fontSize:16,color: Colors.grey),),
            SizedBox(height: 30,),
            Text_Form_Field(
              text: "Full Name",
              filled: true,
              hinText:"Enter Full Name",
            ),
            SizedBox(height: 20,),
            Text_Form_Field(
              text: "E-mail",
              filled: true,
              hinText:"Enter Email",
            ),
            SizedBox(height: 20,),
            Text_Form_Field(
              text: "Confirm Password",
              filled: true,
              hinText:"Enter Password",
              sufIcon:(Icons.remove_red_eye_outlined),
            ),
            SizedBox(height: 20,),
            ElevatedButton_cust(text: 'Sign Up', width: 320,height: 50,
              onPressed: (){},
            ),
            SizedBox(height: 20,),
            Row(
              children:[
                //Custom_Or_Left(),
                Expanded(child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or continue with",
                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                ),
                //Custom_Or_Right(),
                Expanded(child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                )),
              ],
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height:MediaQuery.of(context).size.height*0.07,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF3F4F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                                color: Color(0xFFD1D6DB)
                            )
                        )
                    ),
                    onPressed: (){

                    }, child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Image.asset("assets/images/Google_icon.png"),
                    SizedBox(width: 10,),
                    Text("Continue with Google",style: TextStyle(color: Colors.black),),
                    Expanded(child: SizedBox()),
                  ],
                )
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height:MediaQuery.of(context).size.height*0.07,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF3F4F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                                color: Color(0xFFD1D6DB)
                            )
                        )
                    ),
                    onPressed: (){

                    }, child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Image.asset("assets/images/Facebook_ icon.png"),
                    SizedBox(width: 10,),
                    Text("Sign in with Facebook",style: TextStyle(color: Colors.black),),
                    Expanded(child: SizedBox()),
                  ],
                )
                ),
              ),
            ),
            SizedBox(height: 20,),
            RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: "Already a member? ",style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: "Sign in",
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
    );
  }
}
