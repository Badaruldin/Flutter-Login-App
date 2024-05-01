import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final Size screensize=MediaQuery.of(context).size;
    final OBController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        //fit:StackFit.loose,
        children: [
          LiquidSwipe(
            liquidController: OBController.lController,
            waveType: WaveType.liquidReveal,
            onPageChangeCallback: OBController.onPageChangeCallbackFun,
            enableSideReveal: true,
            slideIconWidget: Icon(Icons.next_plan_outlined, size: 25.0),
            pages: OBController.pages,
          ),
          Positioned(
            right: 15.0,
            top: 20,
            child: IconButton(
              icon: Icon(MdiIcons.skipForward),
              onPressed: () => OBController.skip(),
            ),
          ),
          Positioned(
            bottom: 40.0,
            child: OutlinedButton(
              onPressed: ()=>OBController.nextSlide(),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.black45),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20.0)),
              child: Icon(
                MdiIcons.pagePrevious,
                color: Colors.black45,
              ),
            ),
          ),
          Obx(
                () => Positioned(
                bottom: 15.0,
                child: AnimatedSmoothIndicator(
                  activeIndex: OBController.selectedPage.value,
                  count: 3,
                  //duration: Duration(milliseconds: 200),
                  effect: WormEffect(
                      offset: 0xff271111,
                      activeDotColor: Colors.black,
                      dotHeight: 10.0),
                )),
          )
        ],
      ),
    );
  }
}
