import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Constant/Image_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/CustomTextFiled.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';
import '../Constant/AppString.dart';
import '../Constant/Icon_Path.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';
import '../Routes/Routes.dart';
import 'Auth/Auth_Controller.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

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
               SizedBox(height: 2.h,),
               Text(
                 AppString.loginl,
                 style: TextStyle(
                   color: CustomColors.texttitle,
                   fontSize: 19.sp,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               CustomTextFiled(
                   controller: authContoller.logemailController,
                   hintext: AppString.Enteryouremail,
                 // border: InputBorder.none,
               ),
               CustomTextFiled(
                 controller: authContoller.logpassController,
                 hintext: AppString.Enterpassword,
                 // border: InputBorder.none,
               ),
               Align(
                 alignment: Alignment.bottomRight,
                 child: Padding(
                   padding:  EdgeInsets.only(top: 2.h,bottom: 3.h),
                   child: Text(
                     AppString.Forgetpassword,
                     style: CustomStyles.textStyle(
                       fontColor: CustomColors.textfiledtext,
                       fontSize: 12.sp,
                     ),
                   ),
                 ),
               ),
               InkWell(
                 onTap: () => Get.toNamed(Routes.signupScreen),
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
               Row(
                 children: [
                   Expanded(
                     flex: 1,
                       child:  CustomContainer(
                       height: 4.h,
                       width: 30.w,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color: CustomColors.Buttonbg),
                       ),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Image.asset(IconPath.google,fit: BoxFit.cover,),
                             SizedBox(width: 3.5.w,),
                             Text(AppString.Google,
                               style: CustomStyles.textStyle(
                                 fontWeight: FontWeight.bold,
                                 fontColor: CustomColors.black,
                                 fontSize: 15.sp,
                               ),
                             ),
                           ]
                       ),
                     ),
                   ),
                   SizedBox(width: 3.w,),
                   Expanded(
                     flex: 1,
                       child: CustomContainer(
                         height: 4.h,
                         width: 30.w,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: CustomColors.Buttonbg),
                         ),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset(IconPath.facebook,fit: BoxFit.cover,),
                               SizedBox(width: 3.5.w,),
                               Text(AppString.Facebook,
                                 style: CustomStyles.textStyle(
                                   fontWeight: FontWeight.bold,
                                   fontColor: CustomColors.black,
                                   fontSize: 15.sp,
                                 ),
                               ),
                             ]
                         ),
                       ),
                   ),
                 ],
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
