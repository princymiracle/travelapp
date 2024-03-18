import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travelapp/Constant/Icon_Path.dart';
import 'package:travelapp/Constant/Image_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
import 'package:travelapp/Profile/ProfileListModel.dart';

import '../Constant/AppString.dart';
import '../Custom_Elements/Elements/Custom_AppBar.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';
import '../Routes/Routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.profile, height: 9.h,),
      body: Padding(
        padding:  EdgeInsets.only(left: 5.w,right: 5.w),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 4.h,bottom: 4.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(ImagePath.profile,fit: BoxFit.cover,),
                    Text(AppString.jamesbrown,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                    Text(AppString.gmail,style: CustomStyles.textStyle(fontColor: CustomColors.profiletext),),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppString.settings,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,bottom: 4.h),
                    child: CustomContainer(
                      height: 5.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.profiletext),
                        color: CustomColors.CWhite,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.profilei,fit: BoxFit.cover,),
                                SizedBox(width: 4.w,),
                                Text(AppString.personalinfo,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                              ],
                            ),
                            InkWell(
                              onTap:() => Get.toNamed(Routes.profileinfo),
                              child: Image.asset(
                                IconPath.arrow,fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(AppString.others,style: CustomStyles.textStyle(fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,),
                    child: CustomContainer(
                      height: 5.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.profiletext),
                        color: CustomColors.CWhite,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.terms,fit: BoxFit.cover,),
                                SizedBox(width: 2.w,),
                                Text(AppString.termsofservice,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                              ],
                            ),
                            InkWell(
                              onTap:() => Get.toNamed(Routes.termsservice),
                              child: Image.asset(
                                IconPath.arrow,fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,),
                    child: CustomContainer(
                      height: 5.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.profiletext),
                        color: CustomColors.CWhite,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.language,fit: BoxFit.cover,),
                                SizedBox(width: 2.w,),
                                Text(AppString.language,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                              ],
                            ),
                            InkWell(
                            //  onTap:() => Get.toNamed(Routes.),
                              child: Image.asset(
                                IconPath.arrow,fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 2.h,),
                    child: CustomContainer(
                      height: 5.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: CustomColors.profiletext),
                        color: CustomColors.CWhite,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(IconPath.help,fit: BoxFit.cover,),
                                SizedBox(width: 2.w,),
                                Text(AppString.helpcenter,style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                              ],
                            ),
                            InkWell(
                              onTap:() => Get.toNamed(Routes.helpcenter),
                              child: Image.asset(
                                IconPath.arrow,fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Container(
                  //   // height: 15.h,
                  //   // width: double.infinity,
                  //   child: Column(
                  //     children: [
                  //       ListView.builder(
                  //         shrinkWrap: true,
                  //         itemCount: ProfileList.length,
                  //           itemBuilder: (context, index) {
                  //             return Padding(
                  //               padding:  EdgeInsets.only(top: 2.h),
                  //               child: Container(
                  //                 height:  5.h,
                  //                 width: double.infinity,
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(8),
                  //                   border: Border.all(color: CustomColors.profiletext),
                  //                   color: CustomColors.CWhite,
                  //                 ),
                  //                   // child: ListTile(
                  //                   //   leading: Image.asset(ProfileList[index].image.toString(),fit: BoxFit.cover,),
                  //                   //   title: Text(ProfileList[index].title.toString(),style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                  //                   //   trailing: Image.asset(ProfileList[index].image1.toString(),fit: BoxFit.cover,),
                  //                   // ),
                  //                 child: Padding(
                  //                   padding:  EdgeInsets.only(left: 2.w,right: 2.w),
                  //                   child: Row(
                  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                     children: [
                  //                       Row(
                  //                         children: [
                  //                           Image.asset(ProfileList[index].image.toString(),fit: BoxFit.cover,),
                  //                           SizedBox(width: 4.w,),
                  //                           Text(ProfileList[index].title.toString(),style: CustomStyles.textStyle(fontWeight: FontWeight.w600),),
                  //                         ],
                  //                       ),
                  //                       Image.asset(ProfileList[index].image1.toString(),fit: BoxFit.cover,),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
