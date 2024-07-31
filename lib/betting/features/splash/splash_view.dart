
import 'package:betting_app/betting/features/splash/splash_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../util/helper/image.dart';


class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //     image: DecorationImage(image: AssetImage(Images.Splash),fit:BoxFit.fill)
          // ),
          child: Image.asset(appLogo, fit: BoxFit.fill,),

        ),
      ),
    );
  }
}
