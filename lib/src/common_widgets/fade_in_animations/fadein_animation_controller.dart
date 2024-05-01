import 'package:flutter_login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/login/login_screen.dart';

class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find=> Get.find();

  @override
  void dispose() {
    FadeInAnimationController.find.dispose();
  }

  Rx animate = false.obs;

  Future startSplashAnimate() async {
    await Future.delayed(Duration(seconds: 2));
    animate.value = true;
    await Future.delayed(Duration(seconds: 4));
    animate.value=false;
    Get.offAll(()=>WelcomeScreen());//replace it to all previous activities
    //Get.to(()=>WelcomeScreen());//Move to another activity
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen(),),);
  }

  Future startAnimate() async {
    await Future.delayed(Duration(seconds: 3));
    animate.value = true;
   // Get.off(LoginScreen());

  }

}