import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'Constant/Image_Path.dart';
import 'Custom_Elements/Elements/Custom_Color.dart';
import 'Custom_Elements/Elements/Custom_Container.dart';

class SelectFlight extends StatelessWidget {
  const SelectFlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(3.h),
        child: CustomContainer(
          height: 20.h,
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: CustomColors.Buttonbg),
          ),
          child: Padding(
            padding:  EdgeInsets.all(1.5.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       Image.asset(ImagePath.lion,fit: BoxFit.cover,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
                           Text("R783T",style: TextStyle(color: Colors.grey.withOpacity(0.3),fontSize: 10.sp),)
                         ],
                       ),
                     ],
                   ),
                    Row(
                      children: [
                        Text("1hr 30min",style: TextStyle(color: Colors.grey.withOpacity(0.3),),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("9:00 PM",style: TextStyle(color: Color(0xFF5496FF),fontSize: 10.sp),),
                    Text("9:00 PM",style: TextStyle(color: Color(0xFF5496FF),fontSize: 10.sp),),
                  ],
                ),
                SizedBox(height: 0.5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Y|A",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                    Image.asset(ImagePath.flight,fit: BoxFit.cover,),
                    Text("LOP",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 0.5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Yogyakarta",style: TextStyle(fontSize: 9.sp,color: Colors.grey.withOpacity(1),),),
                    Text("Lombok",style: TextStyle(fontSize: 9.sp,color: Colors.grey.withOpacity(1),),),
                  ],
                ),
                Divider(thickness: 0.3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      height: 3.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: CustomColors.Buttonbg),
                      ),
                      child: Center(
                        child: Text("First Class",style: TextStyle(color: Color(0xFF5496FF),),),
                      ),
                    ),
                    Text("\$2,3600",style: TextStyle(color: Color(0xFF5496FF),fontWeight: FontWeight.bold,fontSize: 12.sp),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
