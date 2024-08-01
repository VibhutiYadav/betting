import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../util/helper/color.dart';
import '../../../util/helper/image.dart';
import '../controller/home_controller.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.put(HomeController());
    return AppBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      toolbarHeight: MediaQuery.of(context).size.height,
      backgroundColor: secondaryColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  user_img,
                  width: 49,
                  height: 49,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                      Text(
                        'Hello, Mohit Yadav',
                        textScaleFactor: 1,
                        style: TextStyle(fontFamily: 'Urbanist-Regular',fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
                      ),

                ],
              ),
            ],
          ),

          Container(
            decoration: BoxDecoration(  shape: BoxShape.circle),
            height: 36,
            padding: EdgeInsets.fromLTRB(0, 3, 15, 8),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15,),
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                // Positioned(
                //   top: -2,
                //   right: -25,
                //   child: Container(
                //     width: 10,
                //     height: 10,
                //     decoration: BoxDecoration(
                //       color: Colors.red,
                //       shape: BoxShape.circle,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
