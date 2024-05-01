import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common_widgets/fade_in_animations/fade_in_animation_models.dart';
import 'package:flutter_login_app/src/common_widgets/fade_in_animations/fadein_animation_controller.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/fade_in_animations/any_widget_animation_design.dart';
import '../../../../constants/images_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Acontroller=Get.put(FadeInAnimationController());
    Acontroller.startSplashAnimate();
    return Scaffold(
      appBar: AppBar(
        title: Text(bAppName),
        leading: Icon(Icons.auto_awesome),
      ),
      body: Stack(
        children: [
          BFadeInAnimation(
            child: Image(
              image: AssetImage(bSplashTopIcon),height: MediaQuery.of(context).size.height * 0.1,
            ),
            durationInMs: 2600,
            bAnimationPosition: BAnimationPositionModel(leftAfter: 15,leftBefore: -30,topAfter: 0,topBefore:0 ),
          ),
          BFadeInAnimation(
            durationInMs: 2000,
            bAnimationPosition: BAnimationPositionModel(topAfter: 30,topBefore: 30,rightAfter: 50,rightBefore: -20),
            child: Image(
              image: AssetImage("assets/images/girl_pic.png",),
              height: MediaQuery.of(context).size.height * 0.45
            ),
          ),
          BFadeInAnimation(
                durationInMs: 2400,
                bAnimationPosition: BAnimationPositionModel(bottomAfter: 90,bottomBefore: 90,leftAfter: 60,leftBefore: -40),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        bAppName,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        bAppTagLine,
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
          BFadeInAnimation(
                durationInMs: 2000,
                bAnimationPosition: BAnimationPositionModel(bottomAfter: 30,bottomBefore: 30,rightAfter: 25,rightBefore: -35),
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.yellow,
                  size: 70.0,
                ),
          ),
        ],
      ),
    );
  }
}
