import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../Constant/AppString.dart';
import '../Constant/Image_Path.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';
import '../Routes/Routes.dart';

class RegisterSucces extends StatelessWidget {
  const RegisterSucces({super.key});
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
                  Center(
                    child: Column(
                      children: [
                        Image.asset(ImagePath.register,fit: BoxFit.cover,),
                        SizedBox(height: 2.h,),
                        Text(
                          AppString.registersuccess,
                          style: TextStyle(
                            color: CustomColors.texttitle,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                          AppString.congratulation,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.textfiledtext,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  InkWell(
                    onTap: () => Get.toNamed(Routes.homepage),
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
                      child: Center(
                        child: Text(
                          AppString.gotohomepage,
                          style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontColor: CustomColors.Buttontext,
                            fontSize: 15.sp,
                          ),
                        ),
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
