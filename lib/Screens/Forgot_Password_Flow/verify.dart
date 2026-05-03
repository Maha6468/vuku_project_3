import 'package:flutter/material.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({super.key});

  Widget otpBox(String text, {bool active = false}) {
    return Container(
      width: 55,
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: active ? Colors.green : Colors.grey.shade300,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
        color: active ? Colors.green.shade50 : Colors.white,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(color: Colors.black),
        ),
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                children: [
                const SizedBox(height: 20),
            const Text(
              'Verify account',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'The code has been sent to johndoe@gmail.com.\nEnter the code to verify your account.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otpBox('2', active: true),
                otpBox(''),
                otpBox(''),
                otpBox(''),
              ],
            ),
            const SizedBox(height: 30),
            RichText(
              text: const TextSpan(
                text: "Didn't receive the code? ",
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(
                    text: 'Resend code',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Resend code at 00:59',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Verify account'),
                ),),],),),);}
                    }