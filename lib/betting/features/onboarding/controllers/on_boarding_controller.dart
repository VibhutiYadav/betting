import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  //TODO: Implement OnBoardingController
  var currentIndex = 0.obs;

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  void onSkipPressed() {
    // Get.off(SignInView());
  }

  void onNextPressed() {
    // Get.off(SignInView());
  }
  List OnBoardingData = [
    {
      "title": 'Welcome to Betting',
      "description":
      'Welcome to our betting app! Our app proides\nseamless and user-friendly experience for sports\nbetting app',
      "images":'assets/images/onboarding.png'

    },
    {
      "title": 'Explore Best Games',
      "description":
      'Welcome to our betting app! Our app proides\nseamless and user-friendly experience for sports\nbetting app.',
      "images":'assets/images/onboarding2.png'

    },

  ];
  // continueMethod(int index) {
  //   currentindex.value=   index;
  // }
  PageController pageController = PageController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
