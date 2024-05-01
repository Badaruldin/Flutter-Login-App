import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/images_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {

  final lController = LiquidController();

  RxInt selectedPage = 0.obs;

  final List<OnBoardingPage> pages = [
    OnBoardingPage(
      OBmodel: OnBoardingModel(
        bOnBoardingImage1,
        bOnBoardingTitle1,
        bOnBoardingSubTitle1,
        bOnBoardingCounter1,
        bOnBoardingPage1Color,
      ),
    ),
    OnBoardingPage(
      OBmodel: OnBoardingModel(
        bOnBoardingImage2,
        bOnBoardingTitle2,
        bOnBoardingSubTitle2,
        bOnBoardingCounter2,
        bOnBoardingPage2Color,
      ),
    ),
    OnBoardingPage(
      OBmodel: OnBoardingModel(
        bOnBoardingImage3,
        bOnBoardingTitle3,
        bOnBoardingSubTitle3,
        bOnBoardingCounter3,
        bOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangeCallbackFun(int activePageIndex) => selectedPage.value = activePageIndex;
  skip()=>lController.jumpToPage(page: 2);
  nextSlide(){
    int nextPage=lController.currentPage+1;
    lController.animateToPage(page: lController.currentPage+1);//if you write this line only, next page will come after dbl-click
  }
}
