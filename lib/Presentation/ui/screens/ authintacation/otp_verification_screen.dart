import 'package:appbar/Presentation/ui/screens/%20authintacation/complete_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 200,),
                Center(  child: Image.asset('assets/images/logo.png',width: 200,)
                ),
                Text('Enter youe OTP Code',style: TextStyle(fontSize: 20),),
                Text('A 4 digit OTP code has been sent',style: TextStyle(color: Colors.grey),),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: Colors.grey,
                    inactiveColor: Colors.black,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  backgroundColor: Colors.white,
                  enableActiveFill: true,
                  onCompleted: (v) {
                  },
                  onChanged: (value) {
                  },
                  beforeTextPaste: (text) {
                    return true;
                  }, appContext: context,
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
                          Get.offAll(CompleteProfileScreen());
                      },
                      child: Text('Next'))),
                RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      style: TextStyle(
                        color: Colors.grey
                      ),
                      text: 'This code will expire in'
                    ),
                    TextSpan(
                      text: '120s',style: TextStyle( color: Colors.black,
                      fontWeight: FontWeight.bold
                    )
                    ),
                  ]
                )),
                TextButton(onPressed: () {} , child: Text('Resend'), style: TextButton.styleFrom(foregroundColor: Colors.grey))
              ],
            ),
          )),
    );
  }
}
