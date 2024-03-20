import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Constant/Image_Path.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_AppBar.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';
import '../Constant/AppString.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Routes/Routes.dart';

class ETicket extends StatefulWidget {
  const ETicket({super.key});

  @override
  State<ETicket> createState() => _ETicketState();
}

class _ETicketState extends State<ETicket> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.eticket, height: 9.h,),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(top: 3.h,left: 6.w,right: 6.w,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppString.ticketdetail,style: CustomStyles.textStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,bottom: 4.h),
                  child: CustomContainer(
                    height: 31.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: CustomColors.Cbordercolor),
                    ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w,bottom: 1.5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(AppString.sep2023,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                    Text(AppString.t900900,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(AppString.h30m,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                    Text(AppString.lionair,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding:  EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(AppString.YogyakartaYA,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 1.h,),
                                    Text(AppString.BandaraJuanda,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                    SizedBox(height: 2.h),
                                    Text(AppString.LombokLOP,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                                    SizedBox(height: 1.h,),
                                    Text(AppString.BandaraJuanda,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
                                  ],
                                ),
                                Image.asset(ImagePath.qr,fit: BoxFit.cover,),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
                Text(AppString.passengerdetail,style: CustomStyles.textStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                Padding(
                  padding:  EdgeInsets.only(top: 2.h,bottom: 8.h),
                  child: CustomContainer(
                    height: 25.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: CustomColors.Cbordercolor),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 5.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),),
                            color: CustomColors.contcolor,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 3.w,top: 0.7.h),
                            child: Text(AppString.passenger1,style: CustomStyles.textStyle(fontSize: 15.sp,),),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:3.w,right: 3.w,top: 1.h),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(bottom: 4.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(AppString.name,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                        SizedBox(height: 0.5.h,),
                                        Text(AppString.Jamesbrown,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(AppString.IdentityNumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                        SizedBox(height: 0.5.h,),
                                        Text(AppString.pn,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppString.ticketnumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 0.5.h,),
                                      Text(AppString.t1485ft8,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppString.seatnumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 0.5.h,),
                                      Text(AppString.snf3,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                    ],
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
                InkWell(
                  //onTap: () => Get.toNamed(Routes.payment),
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
                        AppString.downloadeticket,
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
              ],
            ),
          ),
        ),
      ),
    );
  }


}




// import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';
//
// import '../Constant/AppString.dart';
// import '../Constant/Image_Path.dart';
// import '../Custom_Elements/Elements/Custom_AppBar.dart';
// import '../Custom_Elements/Elements/Custom_Color.dart';
// import '../Routes/Routes.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
//
// class ETicket extends StatelessWidget {
//   const ETicket({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(title: AppString.eticket, height: 9.h,),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Padding(
//             padding:  EdgeInsets.only(top: 3.h,left: 6.w,right: 6.w,),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(AppString.ticketdetail,style: CustomStyles.textStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
//                 Padding(
//                   padding:  EdgeInsets.only(top: 2.h,bottom: 4.h),
//                   child: CustomContainer(
//                     height: 33.h,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: CustomColors.Cbordercolor),
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding:  EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w,bottom: 1.5.h),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 children: [
//                                   Text(AppString.sep2023,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
//                                   Text(AppString.t900900,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   Text(AppString.h30m,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
//                                   Text(AppString.lionair,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         Divider(),
//                         Padding(
//                           padding:  EdgeInsets.only(top: 2.h,left: 3.w,right: 3.w,),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(AppString.YogyakartaYA,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
//                                   SizedBox(height: 1.h,),
//                                   Text(AppString.BandaraJuanda,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
//                                   SizedBox(height: 2.h),
//                                   Text(AppString.LombokLOP,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
//                                   SizedBox(height: 1.h,),
//                                   Text(AppString.BandaraJuanda,style: CustomStyles.textStyle(fontColor: CustomColors.Cbordercolor,fontSize: 12.sp),),
//                                 ],
//                               ),
//                               Image.asset(ImagePath.qr,fit: BoxFit.cover,),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Text(AppString.passengerdetail,style: CustomStyles.textStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
//                 Padding(
//                   padding:  EdgeInsets.only(top: 2.h,bottom: 8.h),
//                   child: CustomContainer(
//                     height: 27.h,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       border: Border.all(color: CustomColors.Cbordercolor),
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 5.h,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),),
//                             color: CustomColors.contcolor,
//                           ),
//                           child: Padding(
//                             padding:  EdgeInsets.only(left: 3.w,top: 0.7.h),
//                             child: Text(AppString.passenger1,style: CustomStyles.textStyle(fontSize: 15.sp,),),
//                           ),
//                         ),
//                         Padding(
//                           padding:  EdgeInsets.only(left:3.w,right: 3.w,top: 1.h),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:  EdgeInsets.only(bottom: 4.h),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(AppString.name,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
//                                         SizedBox(height: 0.5.h,),
//                                         Text(AppString.Jamesbrown,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
//                                       ],
//                                     ),
//                                     Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(AppString.IdentityNumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
//                                         SizedBox(height: 0.5.h,),
//                                         Text(AppString.pn,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(AppString.ticketnumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
//                                       SizedBox(height: 0.5.h,),
//                                       Text(AppString.t1485ft8,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
//                                     ],
//                                   ),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(AppString.seatnumber,style: TextStyle(color: CustomColors.Cbordercolor,fontSize: 11.sp,fontWeight: FontWeight.w500),),
//                                       SizedBox(height: 0.5.h,),
//                                       Text(AppString.snf3,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () => Get.toNamed(Routes.payment),
//                   child: CustomContainer(
//                     height: 6.5.h,
//                     width: 85.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(18),
//                       gradient: LinearGradient(
//                         colors: [
//                           CustomColors.Buttonbg,
//                           CustomColors.Buttonbg1,
//                         ],
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         AppString.downloadeticket,
//                         style: CustomStyles.textStyle(
//                           fontWeight: FontWeight.bold,
//                           fontColor: CustomColors.Buttontext,
//                           fontSize: 15.sp,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 3.h,),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//




