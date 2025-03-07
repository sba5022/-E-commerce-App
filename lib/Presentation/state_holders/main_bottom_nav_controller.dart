import 'package:get/get.dart';
class MainButtonNavController extends GetxController{
  int currentselectedindex=0;
  void changeScreen( int index){
    currentselectedindex=0;
    update();
  }
}