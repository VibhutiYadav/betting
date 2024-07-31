import 'dart:async';
import 'package:get/get.dart';

import '../../util/routes/route.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.onboarding);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
