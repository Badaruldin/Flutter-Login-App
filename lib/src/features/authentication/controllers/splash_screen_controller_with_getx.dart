import 'package:flutter_login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find=> Get.find();

  Rx animate = false.obs;

  Future startAnimate() async {
    await Future.delayed(Duration(seconds: 2));
    animate.value = true;
    await Future.delayed(Duration(seconds: 3));
    Get.to(WelcomeScreen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),),);
  }

}
//initially created GETxController used in splash-screen.
//orignal file is modified later. So, i just keep it as reminder.