import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Constant/Icon_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';

import '../../Constant/AppString.dart';
import '../../Custom_Elements/Elements/CustomTextFiled.dart';
import '../../Custom_Elements/Elements/Custom_AppBar.dart';
import '../../Custom_Elements/Elements/Custom_Color.dart';
import '../../Routes/Routes.dart';

class HelpCenter extends StatelessWidget {
   HelpCenter({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.helpcenter, height: 9.h,),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(left: 7.w,right: 7.w,top: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 4.h),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 0.6.h),
                    height: 5.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: CustomColors.profiletext),
                      color: CustomColors.CWhite,
                    ),
                    child: TextField(
                        controller: searchController,
                      decoration: InputDecoration(
                        hintText: AppString.search,focusColor: CustomColors.profiletext,
                        prefixIcon: Icon(Icons.search,color: CustomColors.profiletext,),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Text(AppString.categories,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(IconPath.FAQ),
                              SizedBox(width: 5.w,),
                              Text(AppString.FAQ,)
                            ],
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.faq),
                              child: Image.asset(IconPath.arrow,),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(IconPath.Booking),
                              SizedBox(width: 5.w,),
                              Text(AppString.booking,)
                            ],
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.booking),
                            child: Image.asset(IconPath.arrow,),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(IconPath.Payment),
                              SizedBox(width: 5.w,),
                              Text(AppString.payment,)
                            ],
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.Paymenthelp),
                            child: Image.asset(IconPath.arrow,),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(IconPath.Fights),
                              SizedBox(width: 5.w,),
                              Text(AppString.fights,)
                            ],
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(Routes.fights),
                            child: Image.asset(IconPath.arrow,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
