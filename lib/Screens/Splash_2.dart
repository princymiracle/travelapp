import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';

import '../Constant/AppString.dart';
import '../Constant/Image_Path.dart';
import '../Routes/Routes.dart';

class SplashS2 extends StatelessWidget {
  const SplashS2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
             Image.asset(ImagePath.Spl2,fit: BoxFit.cover,width: double.infinity,),
              InkWell(
                onTap: () => Get.toNamed(Routes.loginScreen),
                child: CustomContainer(
                  height: 6.5.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      gradient: LinearGradient(
                          colors: [
                            CustomColors.Buttonbg,
                            CustomColors.Buttonbg1,
                          ],
                      ),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(AppString.login,
                        style: CustomStyles.textStyle(
                          fontWeight: FontWeight.bold,
                          fontColor: CustomColors.Buttontext,
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(width: 1.w,),
                      Icon(Icons.arrow_forward,color: CustomColors.Buttontext,size: 15,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              CustomContainer(
                height: 6.5.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  border: Border.all(color: CustomColors.Buttonbg),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppString.registeryouraccount,
                    style: CustomStyles.textStyle(
                      fontWeight: FontWeight.bold,
                      fontColor: CustomColors.Buttonbg,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(width: 1.w,),
                    Icon(Icons.arrow_forward,color: CustomColors.Buttonbg,size: 15,),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
