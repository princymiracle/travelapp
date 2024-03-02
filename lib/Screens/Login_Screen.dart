import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:travelapp/Constant/Image_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';

import '../Constant/AppString.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                 AppString.login,
                 style: TextStyle(
                   color: CustomColors.texttitle,
                   fontSize: 18.sp,
                   fontWeight: FontWeight.bold,
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
