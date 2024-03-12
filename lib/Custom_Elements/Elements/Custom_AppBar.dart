import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'Custom_Color.dart';
import 'Custom_Styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  Widget? customTitle;
  double? height;
  double? iconSize;
  Function? prefixAction;
  Widget? prefixIcon;
  bool isSafeArea;

  CustomAppBar({Key? key,
    required this.title,
    this.height,
    this.prefixAction,
    this.prefixIcon,
    this.iconSize,
    this.customTitle,
    this.isSafeArea = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          CustomColors.Buttonbg,
          CustomColors.Buttonbg1,
        ]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(6.w),
          bottomRight: Radius.circular(6.w),
          // bottomLeft: Radius.circular(8.w),
          // bottomRight: Radius.circular(8.w),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w,top: 1.5.h),
            child: InkWell(
                onTap:  () => prefixAction != null ? prefixAction!() : Navigator.pop(context),
                child: Icon(Icons.arrow_back,size: 4.5.w,color: CustomColors.Buttontext,)),
                //child: Icon(Icons.arrow_back,size: 25,color: CustomColors.Buttontext,)),
          ),
          Padding(padding: EdgeInsets.only(left: 1.w,top: 1.5.h),
            child: Text(title,style: CustomStyles.textStyle(fontColor: CustomColors.Buttontext,fontSize: 18.sp,letterspacing: 1)),
           // child: Text(title,style: CustomStyles.textStyle(fontColor: CustomColors.Buttontext,fontSize: 15.sp,fontWeight: FontWeight.w900,letterspacing: 1)),
          ),
        ],
      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size(170.w, height ?? (11.h) );
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 9.h,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),
//         gradient: LinearGradient(
//           colors: [
//             CustomColors.Buttonbg,
//             CustomColors.Buttonbg1,
//           ],
//         ),
//       ),
//       child: child,
//     );
//   }
// }

// child:  CustomContainer(
//   height: 9.h,
//   width: double.infinity,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),
//     gradient: LinearGradient(
//       colors: [
//         CustomColors.Buttonbg,
//         CustomColors.Buttonbg1,
//       ],
//     ),
//   ),
//   child: Padding(
//     padding:  EdgeInsets.only(left: 5.w,top: 1.5.h),
//     child: Row(
//       children: [
//         Icon(Icons.arrow_back,color: CustomColors.Buttontext,size: 4.5.w,),
//         SizedBox(width: 1.w,),
//         Text(AppString.eticket,style: TextStyle(color: CustomColors.Buttontext,fontSize: 15.sp),),
//       ],
//     ),
//   ),
// ),