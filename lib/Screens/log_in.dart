import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vuku_project_3/Custom_Widget/elevated_Button.dart';

import '../Custom_Widget/text_from_field.dart';

class Log_In extends StatefulWidget {
  const Log_In({super.key});

  @override
  State<Log_In> createState() => _Log_InState();
}

class _Log_InState extends State<Log_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome Back",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text("Use Credentials to access your account",style: TextStyle(fontSize:16,color: Colors.grey),),
            SizedBox(height: 30,),
            Text_Form_Field(
              text: "E-mail",
              filled: true,
              hinText:"Enter your Email",
            ),
            SizedBox(height: 20,),
            Text_Form_Field(
              text: "Password",
              filled: true,
              hinText:"Enter Password",
              sufIcon:(Icons.remove_red_eye_outlined),
            ),
            SizedBox(height: 20,),

            ElevatedButton_cust(

            ),



          ],
        ),
      ),
    );
  }
}
