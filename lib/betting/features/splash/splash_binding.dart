
import 'package:betting_app/betting/features/splash/splash_controller.dart';
import 'package:get/get.dart';



class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
