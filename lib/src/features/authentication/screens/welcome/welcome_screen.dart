import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common_widgets/fade_in_animations/any_widget_animation_design.dart';
import 'package:flutter_login_app/src/common_widgets/fade_in_animations/fade_in_animation_models.dart';
import 'package:flutter_login_app/src/common_widgets/fade_in_animations/fadein_animation_controller.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';

import '../../../../constants/images_strings.dart';
import '../../../../constants/text_strings.dart';
import '../signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final animationController=Get.put(FadeInAnimationController());//to put our created AnimationController here
  animationController.startAnimate();//to call animation's user defined function

    var mediaQuery = MediaQuery.of(context);
    var screenSize = mediaQuery.size;
    //var bightness = mediaQuery.platformBrightness; // to able to get system mode
    //final isDarkMode = bightness==Brightness.dark; //to able to check bool ture if dark mode on?
    return Scaffold(
     // backgroundColor: isDarkMode ? bDarkColor : bPrimaryColor,
      //it's been throwing error of Textstyle lerp in terminal and can't work properly
      body: Stack(
          //padding: EdgeInsets.all(bDefaultSize),
          children: [
            BFadeInAnimation(
              durationInMs: 1500,
              bAnimationPosition: BAnimationPositionModel(
                bottomAfter: 0,
                bottomBefore: -100,
                topBefore: 0,
                topAfter: 0,
                rightBefore: 0,
                rightAfter: 0,
                leftBefore: 0,
                leftAfter: 0,
              ),
              child: Container(
                padding: EdgeInsets.all(bDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "welcome image",
                      child: Image(
                        image: AssetImage(bWelcomeScreenImage),
                        height: screenSize.height * 0.6,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          bWelcomeTitle,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          bWelcomeSubTitle,
                          style: Theme.of(context).textTheme.displayLarge,
                          textAlign: TextAlign.center,
                        ),
                        //Text(bWelcomeSubTitle,style: TextStyle(fontSize: screenSize.height * 0.05),)//it,s just a dummy check.
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              //style for both buttons is defined in custom textThemes
                              onPressed: ()=> Get.to(()=> LoginScreen()),
                              child: Text(
                                bLogin.toUpperCase(),
                                //style: Theme.of(context).textTheme.displayLarge,
                              )),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () => Get.to(()=>SignUpScreen()),
                              child: Text(
                                bSignup.toUpperCase(),
                                // style: Theme.of(context).textTheme.displayLarge,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
