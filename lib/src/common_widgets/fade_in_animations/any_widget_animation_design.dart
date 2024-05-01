import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/common_widgets/fade_in_animations/fade_in_animation_models.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'fadein_animation_controller.dart';

class BFadeInAnimation extends StatelessWidget {
  BFadeInAnimation({
    super.key,
    required this.child,
    required this.durationInMs,
    this.bAnimationPosition,
  });

  final Acontroller=Get.put(FadeInAnimationController());
  final BAnimationPositionModel? bAnimationPosition;
  final Widget child;
  final int durationInMs;

  @override
  Widget build(BuildContext context) {
    return Obx(()=>AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: Acontroller.animate.value ? bAnimationPosition?.topAfter : bAnimationPosition?.topBefore,
        left: Acontroller.animate.value ? bAnimationPosition?.leftAfter : bAnimationPosition?.leftBefore,
        bottom: Acontroller.animate.value ? bAnimationPosition?.bottomAfter : bAnimationPosition?.bottomBefore,
        right: Acontroller.animate.value ? bAnimationPosition?.rightAfter : bAnimationPosition?.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: Acontroller.animate.value? 1:0,
          child:child
          //Image(image: AssetImage("assets/images/leaf_logo.png"),
          ),
        ),
    );
  }
}
