import 'package:betting_app/betting/util/helper/color.dart';
import 'package:betting_app/betting/util/routes/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/widgets/common_materialbutton.dart';
import '../../../common/widgets/common_textformfield.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  SignInView({Key? key}) : super(key: key);
  SignInController signInController = SignInController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: primaryColor,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Welcome back",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.018,
                        ),
                        Text(
                          "Let's us know what your name, email and your password",
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.018,
                        ),
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CommonTextFormField(
                    fillColor: secondaryColor,
                    hintName: 'Type your email',
                    keyboardTypes: TextInputType.emailAddress,
                    obscured: false,
                    controller: signInController.emailController,
                    // validator: (value) {
                    //   if (!GetUtils.isEmail(value))
                    //     return "Enter valid email";
                    //   else
                    //     return null;
                    // },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CommonTextFormField(
                      hintName: 'Password',
                      fillColor: secondaryColor,
                      sufix: signInController.isCheck.value
                          ? IconButton(
                              onPressed: () => signInController.setIsCheck(),
                              icon: Icon(
                                Icons.visibility_rounded,
                                size: 24,
                                color: Colors.grey,
                              ),
                            )
                          : IconButton(
                              onPressed: () => signInController.setIsCheck(),
                              icon: Icon(
                                Icons.visibility_off_rounded,
                                size: 24,
                                color: Colors.grey,
                              ),
                            ),
                      keyboardTypes: TextInputType.visiblePassword,
                      obscured: signInController.isCheck.value,
                      controller: signInController.passwordController,
                      validator: (value) {
                        if (value.length < 8)
                          return "Password should minimum 8 character";
                        else
                          return null;
                      },
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Obx(() {
                  return CheckboxListTile(
                    activeColor: primaryColor,
                    title: Text(
                      "Remember me",
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    value: signInController.isAgreed.value,
                    onChanged: (bool? value) {
                      signInController.toggleAgreement();
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                }),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                CommonMaterialButton(text: 'Sign In', color: Colors.indigoAccent, textcolor: whiteColor, ontap:(){
                  Get.offNamed(AppRoutes.signup);
                },),
              ],
            ),
          )),
    );
  }
}
