import 'package:betting_app/betting/util/helper/color.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
   OnBoardingView({Key? key}) : super(key: key);
  OnBoardingController onBoardingController=OnBoardingController();
   // final List<Map<String, String>> pages = [
   //   {
   //     'title': language.walkTitle1,
   //     'title1': language.walkTitle11,
   //     'image': walk_Img1,
   //     'subTitle': language.walkThrough1,
   //     'subTitle1': language.walkThrough11,
   //   },
   //   {
   //     'title': language.walkTitle2,
   //     'title1': language.walkTitle22,
   //     'image': walk_Img2,
   //     'subTitle': language.walkThrough2,
   //     'subTitle1': language.walkThrough22,
   //     'subTitle11': language.walkThrough222,
   //   },
   // ];

   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         backgroundColor: Colors.white,
         body: Stack(
           alignment: Alignment.bottomCenter,
           children: [
             PageView.builder(
               itemCount: onBoardingController.OnBoardingData.length,
               onPageChanged: controller.onPageChanged,
               itemBuilder: (BuildContext context, int index) {
                 Map<String, String> page = onBoardingController.OnBoardingData[index];
                 return Stack(
                   children: [
                     Container(
                        height: MediaQuery.of(context).size.height,
                 width: MediaQuery.of(context).size.width,
                 color:primaryColor,
                       // padding: EdgeInsets.only(left: 30, right: 30),
                       // child: Image.asset(page['images']!,fit: BoxFit.fill,),
                     ),
                     Positioned(
                       bottom: 0,
                       child: Container(
                         height: MediaQuery.of(context).size.height*0.45,
                         width: MediaQuery.of(context).size.width,

                         decoration: BoxDecoration(
                           color: secondaryColor,
                             borderRadius: BorderRadius.only(
                                 topRight: Radius.circular(20),
                                 topLeft: Radius.circular(20))
                           // gradient: AppColor.linearGradient
                             // image: DecorationImage(
                             //     image: AssetImage(Images.intro_background),
                             //     fit: BoxFit.fill)
                         ),
       
                         child:  Column(
                               crossAxisAlignment: CrossAxisAlignment.center,

                               children: [
                                 Container(
                                   decoration: BoxDecoration(
       
                                   ),
                                   // width: double.infinity,
                                   // height: MediaQuery.of(context).size.height,
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 20),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         SizedBox(
                                           height: 25,
                                         ),
                                         Text(page['title']!,
                                             textAlign: TextAlign.center,
                                             style: GoogleFonts.poppins(
                                               fontSize: 25,
                                               fontWeight: FontWeight.w600,
                                               color: Colors.white
                                             )),
                                         Padding(
                                           padding: const EdgeInsets.only(top: 10),
                                           child: Text(
                                             textAlign: TextAlign.center,
                                             page['description']!,
                                             style: TextStyle(
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w400,
                                                 color: Colors.white),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                 )
                               ],
                         )
                       ),
                     ),
       
                   ],
                 );
               },
             ),
             Positioned(
               left: 175,
                 bottom:MediaQuery.of(context).size.height*0.05,
                 child: Obx(() => Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SmoothPageIndicator(
                         controller: PageController(
                           initialPage: controller.currentIndex.value    ,
                           onAttach: (position) {
                             controller.currentIndex.value;
                           },
                         ),
                         count: onBoardingController.OnBoardingData.length,
                         effect: ExpandingDotsEffect(
                           dotWidth: 8,
                           dotHeight: 8,
                           dotColor:  Colors.white,
                           activeDotColor: Colors.white,
                         ),
                       ),
                     ]
                 )
                 )
             ),
             Positioned(
               right: 0, left: 0,
               bottom:  MediaQuery.of(context).size.height*0.17,
               child:  InkWell(
                 onTap: () {
                    // Get.to(SignInView());
                 },
                 child: Container(
                   width: 65,
                   height: 65,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color:primaryColor
                   ),
                   child: Icon(Icons.arrow_forward_ios,size: 24,color: Colors.white,)
                            ),
               ),)
           ],
         ),
       ),
     );
   }
}