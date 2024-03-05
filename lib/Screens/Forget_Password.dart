import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Text.dart';

import '../Constant/AppString.dart';
import '../Constant/Image_Path.dart';
import '../Custom_Elements/Elements/CustomTextFiled.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Routes/Routes.dart';
import 'Auth/Auth_Controller.dart';

class ForgetPassword extends StatelessWidget {
   ForgetPassword({super.key});

  AuthController authContoller=Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.asset(ImagePath.background,fit: BoxFit.cover,),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                      left: 8.w,
                      right: 8.w,
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ImagePath.logimg,fit: BoxFit.cover,),
                      SizedBox(height: 6.h,),
                      Text(
                        AppString.forgetpassword,
                        style: TextStyle(
                          color: CustomColors.texttitle,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Text(
                        AppString.enteryouremailorphonenumber,
                        style: CustomStyles.textStyle(
                          fontColor: CustomColors.textfiledtext,
                          fontSize: 12.sp,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 4.h,bottom: 1.h),
                        child: Center(
                          child: Column(
                            children: [
                             Text(
                               AppString.Email,
                               style: CustomStyles.textStyle(
                                 fontColor: CustomColors.textfiledtext,
                               ),
                             ),
                              Padding(
                                padding:  EdgeInsets.only(left: 15.w,right: 15.w),
                                child: Divider(
                                 color: CustomColors.textfiledtext,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomTextFiled(
                        controller: authContoller.FPemailController,
                        hintext: AppString.Enteremail,
                      ),
                      SizedBox(height: 3.h,),
                      InkWell(
                        onTap: () => Get.toNamed(Routes.fpotp),
                        child: CustomContainer(
                          height: 6.5.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
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
                              Text(
                                AppString.sendcode,
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}