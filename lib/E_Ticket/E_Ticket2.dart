import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:travelapp/Constant/AppString.dart';
import 'package:travelapp/Constant/Image_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';

class ETicket2 extends StatelessWidget {
  const ETicket2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),
              gradient: LinearGradient(
                colors: [
                  CustomColors.Buttonbg,
                  CustomColors.Buttonbg1,
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 4.h,left: 7.w,right: 7.w,),
            child: Container(
              child: Container(
                child: Column(
                  children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back,color: CustomColors.CWhite,size: 4.5.w,),
                      SizedBox(width: 0.5.h,),
                      Text(AppString.eticket,style: CustomStyles.textStyle(fontColor: CustomColors.CWhite,fontSize: 18.sp,letterspacing: 1),),
                    ],
                  ),
                  Padding(
                  padding:  EdgeInsets.only(top: 4.h,bottom: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: CustomColors.contcolor,
                      ),
                      child:  Center(
                        child: Text(AppString.all,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.signuptext1,
                          ),
                        ),
                      ),
                    ),
                    CustomContainer(
                      padding: EdgeInsets.only(top: 0.2.h,bottom: 0.2.h,left: 2.5.w,right: 2.w),
                      height: 3.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: CustomColors.Cblack),
                      ),
                      child: Text(AppString.completed,
                        style: CustomStyles.textStyle(
                          fontColor: CustomColors.Cblack,
                        ),
                      ),
                    ),
                    CustomContainer(
                      height: 3.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: CustomColors.Cblack),
                      ),
                      child: Center(
                        child: Text(AppString.completed,
                          style: CustomStyles.textStyle(
                            fontColor: CustomColors.Cblack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                  ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w,right: 1.w,),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ContainerWidget(),
                            ContainerWidget(),
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
    );
  }
  Widget ContainerWidget () {
    return Column(
      children: [
        Container(
          height: 25.h,
          width: 90.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: CustomColors.border),
            color: CustomColors.CWhite,
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomContainer(
                          height: 3.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: CustomColors.Bbg2,
                          ),
                          child: Center(
                            child: Text(AppString.ompleted,style: TextStyle(color:CustomColors.BText2),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
                        Text(AppString.YA,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
                    Column(
                      children: [
                        Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
                        Text(AppString.LOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h,),
                SizedBox(height: 1.h,),
                Row(
                  children: [
                    Text(AppString.Economy,style: CustomStyles.textStyle(fontColor: CustomColors.textfiledtext),),
                    Padding(
                      padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                      child: Image.asset(ImagePath.circle,fit: BoxFit.cover,height: 0.9.h,color: CustomColors.textfiledtext,),
                    ),
                    Text(AppString.Direct,style: CustomStyles.textStyle(fontColor: CustomColors.textfiledtext),),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(
                      height: 3.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: CustomColors.contcolor,
                      ),
                      child: Center(
                        child: Text(AppString.ticket,style: TextStyle(color:CustomColors.signuptext1),),
                      ),
                    ),
                    CustomContainer(
                      height: 3.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: LinearGradient(
                          colors: [
                            CustomColors.Buttonbg,
                            CustomColors.Buttonbg1,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(AppString.refund, style: CustomStyles.textStyle(fontColor: CustomColors.Buttontext,),),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
