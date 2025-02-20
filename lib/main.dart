import 'package:appbar/Presentation/ui/screens/splash_screen.dart';
import 'package:appbar/application/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  runApp( QuickCart()
  );
}
class QuickCart extends StatefulWidget {
  const QuickCart({super.key});

  @override
  State<QuickCart> createState() => _QuickCartState();
}

class _QuickCartState extends State<QuickCart> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      home: SplashScreen(),
    );
  }
}
