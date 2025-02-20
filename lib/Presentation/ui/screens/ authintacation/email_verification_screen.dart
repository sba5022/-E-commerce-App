import 'package:appbar/Presentation/ui/screens/%20authintacation/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 200,),
            Center(  child: Image.asset('assets/images/logo.png',width: 200,)
            ),
                Text('Welcome back',style: TextStyle(fontSize: 20),),
                Text('Please Enter Your Email address',style: TextStyle(color: Colors.grey),),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black45),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        onPressed: () {
                          Get.to(OtpVerificationScreen());
                        }, child: Text('Next')))
              ],
            ),
          )),
    );
  }
}
