import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../Constant/AppString.dart';
import '../Constant/Image_Path.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';

class RefundPage extends StatelessWidget {
  const RefundPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 18.h,
                left: 8.w,
                right: 8.w,
                bottom: 18.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(ImagePath.refund,fit: BoxFit.cover,),
                        SizedBox(height: 6.h,),
                        Text(
                          AppString.refundre,
                          style: TextStyle(
                            color: CustomColors.texttitle,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 1.h,),
                        Text(
                          AppString.ticketche,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.textfiledtext,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          AppString.button,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.textfiledtext,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  InkWell(
                    // onTap: () => Get.toNamed(Routes.registersucces),
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
                          AppString.backto,
                          style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontColor: CustomColors.Buttontext,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  InkWell(
                    //onTap: () => Get.toNamed(Routes.signupScreen),
                    child: CustomContainer(
                      height: 6.5.h,
                      width: 85.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: CustomColors.Buttonbg),
                      ),
                      child: Center(
                        child: Text(AppString.check,
                          style: CustomStyles.textStyle(
                            fontWeight: FontWeight.bold,
                            fontColor: CustomColors.Buttonbg,
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
