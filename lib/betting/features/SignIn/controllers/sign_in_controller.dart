
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  var isAgreed = false.obs;

  void toggleAgreement() {
    isAgreed.value = !isAgreed.value;
  }

  final count = 0.obs;
  RxBool  isCheck=true.obs;


  void setIsCheck(){
    print("function got called");
    isCheck.toggle();
    update();
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();


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

  void increment() => count.value++;
}



