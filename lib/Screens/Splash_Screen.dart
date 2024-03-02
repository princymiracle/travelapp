import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Constant/Image_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/CustomButtons.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';

import '../Constant/AppString.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Routes/Routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height:  MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding:  EdgeInsets.only(top: 8.h,left: 10.w,right: 6.w,bottom: 5.h),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(AppString.Lets,
                     style: CustomStyles.textStyle(
                       fontSize: 19.sp,
                       fontColor: CustomColors.spltext,
                     ),
                   ),
                   // SizedBox(height: 1.h,),
                   Text(AppString.Explore,
                     style: CustomStyles.textStyle(
                       fontSize: 24.sp,
                       fontColor: CustomColors.spltext,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Text(AppString.TheWorld,
                     style: CustomStyles.textStyle(
                       fontSize: 18.sp,
                       fontColor: CustomColors.spltext,
                     ),
                   ),
                   SizedBox(height: 2.h,),
                   Text(AppString.lorem,
                     style: CustomStyles.textStyle(
                       fontSize: 10.sp,
                       fontColor: CustomColors.spltext,
                     ),
                   ),
                   Text(AppString.elit,
                     style: CustomStyles.textStyle(
                       fontSize: 10.sp,
                       fontColor: CustomColors.spltext,
                     ),
                   ),
                   Text(AppString.massa,
                     style: CustomStyles.textStyle(
                       fontSize: 10.sp,
                       fontColor: CustomColors.spltext,
                     ),
                   ),
                   SizedBox(height: 3.h,),
                   CustomButton(
                     title: AppString.Enter,
                     fontSIze: 14.sp,
                     size: Size(35.w, 4.h),
                     onTap: () => Get.toNamed(Routes.splashScreen2),
                   ),
                 ],
               ),
             ),
              Stack(
                children: [
                  Image.asset(ImagePath.Splbg,fit: BoxFit.cover,height: 63.h,),
                 // Image.asset("assets/images/splbg.png",fit: BoxFit.cover,height: 63.h,),
                  Positioned(
                      bottom: 7.h,
                      left: 5.w,
                      right: 5.w,
                      child: Center(
                          //child: Image.asset("assets/images/Splsimg.png",fit: BoxFit.cover,height: 40.h,),
                        child: Image.asset(ImagePath.Splashimg,fit: BoxFit.cover,height: 40.h,),
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
