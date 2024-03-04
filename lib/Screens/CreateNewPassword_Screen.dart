import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constant/AppString.dart';
import '../Constant/Image_Path.dart';
import '../Custom_Elements/Elements/CustomTextFiled.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';
import '../Routes/Routes.dart';
import 'Auth/Auth_Controller.dart';

class NewPassword extends StatelessWidget {
   NewPassword({super.key});

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
            Padding(
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
                    AppString.createnewpassword,
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
                  CustomTextFiled(
                    controller: authContoller.newpassController,
                    hintext: AppString.NewPassword,
                  ),
                  CustomTextFiled(
                    controller: authContoller.confirmpassController,
                    hintext: AppString.ConfirmPassword,
                  ),
                  SizedBox(height: 3.h,),
                  InkWell(
                    onTap: () => Get.toNamed(Routes.registersucces),
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
                            AppString.changepassword,
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
          ],
        ),
      ),
    );
  }
}
