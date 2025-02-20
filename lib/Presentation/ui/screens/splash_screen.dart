import 'dart:ffi';

import 'package:appbar/Presentation/ui/screens/%20authintacation/email_verification_screen.dart';
import 'package:appbar/Presentation/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }
  void goToNextScreen(){
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.offAll(EmailVerificationScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
Center(child: Image.asset('assets/images/logo.png',width: 300,)),
          Spacer(),
          CircularProgressIndicator(),
          const SizedBox(height: 16,),
          Text('Version 1.0.0'),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
