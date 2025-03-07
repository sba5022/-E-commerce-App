import 'package:appbar/Presentation/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<CompleteProfileScreen> {
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
                Text('Complete Profile',style: TextStyle(fontSize: 20),),
                SizedBox(
                  height: 4,
                ),
                Text('Get started with us by share your details',style: TextStyle(color: Colors.grey),),
                SizedBox(height: 24,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'First Name'
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Last Name'
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Mobile'
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'City'
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Shipping address',
                    contentPadding: EdgeInsets.symmetric(horizontal: 3, vertical: 16)
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 16,
                ),
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
                          Get.to(HomeScreen());
                        },
                        child: Text('Complete'))),
              ],
            ),
          )),
    );
  }
}
