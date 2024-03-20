// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:travelapp/Constant/AppString.dart';
// import 'package:travelapp/Constant/Image_Path.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';
//
// class ETicket2 extends StatelessWidget {
//   const ETicket2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: 30.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),
//               gradient: LinearGradient(
//                 colors: [
//                   CustomColors.Buttonbg,
//                   CustomColors.Buttonbg1,
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 4.h,left: 7.w,right: 7.w,),
//             child: Container(
//               child: Container(
//                 child: Column(
//                   children: [
//                   Row (
//                     children: [
//                       Icon(Icons.arrow_back,color: CustomColors.CWhite,size: 4.5.w,),
//                       SizedBox(width: 0.5.h,),
//                       Text(AppString.eticket,style: CustomStyles.textStyle(fontColor: CustomColors.CWhite,fontSize: 18.sp,letterspacing: 1),),
//                     ],
//                   ),
//                   Padding(
//                   padding:  EdgeInsets.only(top: 4.h,bottom: 4.h),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomContainer(
//                       height: 3.h,
//                       width: 10.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         color: CustomColors.contcolor,
//                       ),
//                       child:  Center(
//                         child: Text(AppString.all,
//                           style: CustomStyles.textStyle(
//                             fontColor: CustomColors.signuptext1,
//                           ),
//                         ),
//                       ),
//                     ),
//                     CustomContainer(
//                       padding: EdgeInsets.only(top: 0.2.h,bottom: 0.2.h,left: 2.5.w,right: 2.w),
//                       height: 3.h,
//                       width: 25.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         border: Border.all(color: CustomColors.Cblack),
//                       ),
//                       child: Text(AppString.completed,
//                         style: CustomStyles.textStyle(
//                           fontColor: CustomColors.Cblack,
//                         ),
//                       ),
//                     ),
//                     CustomContainer(
//                       height: 3.h,
//                       width: 25.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         border: Border.all(color: CustomColors.Cblack),
//                       ),
//                       child: Center(
//                         child: Text(AppString.completed,
//                           style: CustomStyles.textStyle(
//                             fontColor: CustomColors.Cblack,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                   ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 1.w,right: 1.w,),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             ContainerWidget(),
//                             SizedBox(height: 4.h,),
//                             ContainerWidget2(),
//                            // SizedBox(height: 4.h,),
//                            // ContainerWidget(),
//                             // SizedBox(height: 4.h,),
//                             // ContainerWidget2(),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget ContainerWidget () {
//     return Column(
//       children: [
//         Container(
//           height: 25.h,
//           width: 90.w,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: CustomColors.border),
//             color: CustomColors.CWhite,
//           ),
//           child: Padding(
//             padding:  EdgeInsets.all(1.5.h),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(ImagePath.lion,fit: BoxFit.cover,),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         CustomContainer(
//                           height: 3.h,
//                           width: 25.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                             color: CustomColors.Bbg2,
//                           ),
//                           child: Center(
//                             child: Text(AppString.ompleted,style: TextStyle(color:CustomColors.BText2),),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.5.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.YA,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                     Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.LOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.h,),
//                 SizedBox(height: 1.h,),
//                 Row(
//                   children: [
//                     Text(AppString.Economy,style: CustomStyles.textStyle(fontColor: CustomColors.textfiledtext),),
//                     Padding(
//                       padding:  EdgeInsets.only(left: 2.w,right: 2.w),
//                       child: Image.asset(ImagePath.circle,fit: BoxFit.cover,height: 0.9.h,color: CustomColors.textfiledtext,),
//                     ),
//                     Text(AppString.Direct,style: CustomStyles.textStyle(fontColor: CustomColors.textfiledtext),),
//                   ],
//                 ),
//                 SizedBox(height: 2.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomContainer(
//                       height: 3.h,
//                       width: 25.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         color: CustomColors.contcolor,
//                       ),
//                       child: Center(
//                         child: Text(AppString.ticket,style: TextStyle(color:CustomColors.signuptext1),),
//                       ),
//                     ),
//                     CustomContainer(
//                       height: 3.h,
//                       width: 25.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         gradient: LinearGradient(
//                           colors: [
//                             CustomColors.Buttonbg,
//                             CustomColors.Buttonbg1,
//                           ],
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(AppString.refund, style: CustomStyles.textStyle(fontColor: CustomColors.Buttontext,),),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget ContainerWidget2 () {
//     return  Column(
//       children: [
//         Container(
//           height: 19.h,
//           width: 90.w,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: CustomColors.border),
//             color: CustomColors.CWhite,
//           ),
//           child: Padding(
//             padding:  EdgeInsets.all(1.5.h),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(ImagePath.lion,fit: BoxFit.cover,),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         CustomContainer(
//                           height: 3.h,
//                           width: 25.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                             color: CustomColors.Bbg3,
//                           ),
//                           child: Center(
//                             child: Text(AppString.refund,style: TextStyle(color:CustomColors.BText3),),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.5.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.YA,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                     Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.LOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.h,),
//                 Row(
//                   children: [
//                     Text(AppString.alreadyrefunded,style: CustomStyles.textStyle(fontColor: CustomColors.signuptext1,fontWeight: FontWeight.bold,),),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
// }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:travelapp/Constant/AppString.dart';
// import 'package:travelapp/Constant/Image_Path.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Container.dart';
// import 'package:travelapp/Custom_Elements/Elements/Custom_Styles.dart';
//
// class ETicket2 extends StatelessWidget {
//   const ETicket2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: 30.h,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),
//               gradient: LinearGradient(
//                 colors: [
//                   CustomColors.Buttonbg,
//                   CustomColors.Buttonbg1,
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 4.h,left: 7.w,right: 7.w,),
//               child: Container(
//                 child: Column(
//                   children: [
//                     Row (
//                       children: [
//                         Icon(Icons.arrow_back,color: CustomColors.CWhite,size: 4.5.w,),
//                         SizedBox(width: 0.5.h,),
//                         Text(AppString.eticket,style: CustomStyles.textStyle(fontColor: CustomColors.CWhite,fontSize: 18.sp,letterspacing: 1),),
//                       ],
//                     ),
//                     Padding(
//                       padding:  EdgeInsets.only(top: 4.h,bottom: 4.h),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomContainer(
//                             height: 3.h,
//                             width: 10.w,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                               color: CustomColors.contcolor,
//                             ),
//                             child:  Center(
//                               child: Text(AppString.all,
//                                 style: CustomStyles.textStyle(
//                                   fontColor: CustomColors.signuptext1,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           CustomContainer(
//                             padding: EdgeInsets.only(top: 0.2.h,bottom: 0.2.h,left: 2.5.w,right: 2.w),
//                             height: 3.h,
//                             width: 25.w,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                               border: Border.all(color: CustomColors.Cblack),
//                             ),
//                             child: Text(AppString.completed,
//                               style: CustomStyles.textStyle(
//                                 fontColor: CustomColors.Cblack,
//                               ),
//                             ),
//                           ),
//                           CustomContainer(
//                             height: 3.h,
//                             width: 25.w,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(7),
//                               border: Border.all(color: CustomColors.Cblack),
//                             ),
//                             child: Center(
//                               child: Text(AppString.completed,
//                                 style: CustomStyles.textStyle(
//                                   fontColor: CustomColors.Cblack,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Padding(
//                     //   padding: EdgeInsets.only(left: 1.w,right: 1.w,),
//                     //   child: SingleChildScrollView(
//                     //     child: Column(
//                     //       children: [
//                     //         ContainerWidget(),
//                     //         SizedBox(height: 4.h,),
//                     //         ContainerWidget2(),
//                     //         // SizedBox(height: 4.h,),
//                     //         // ContainerWidget(),
//                     //         // SizedBox(height: 4.h,),
//                     //         // ContainerWidget2(),
//                     //       ],
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 20.h,left: 7.w,right: 7.w,),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   ContainerWidget(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget2(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget2(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget2(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget(),
//                   SizedBox(height: 4.h,),
//                   ContainerWidget2(),
//                   SizedBox(height: 4.h,),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget ContainerWidget () {
//     return Column(
//       children: [
//         Container(
//           height: 25.h,
//           width: 90.w,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: CustomColors.border),
//             color: CustomColors.CWhite,
//           ),
//           child: Padding(
//             padding:  EdgeInsets.all(1.5.h),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(ImagePath.lion,fit: BoxFit.cover,),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         CustomContainer(
//                           height: 3.h,
//                           width: 25.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                             color: CustomColors.Bbg2,
//                           ),
//                           child: Center(
//                             child: Text(AppString.ompleted,style: TextStyle(color:CustomColors.BText2),),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.5.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.YA,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                     Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.LOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.h,),
//                 SizedBox(height: 1.h,),
//                 Row(
//                   children: [
//                     Text(AppString.Economy,style: CustomStyles.textStyle(fontColor: CustomColors.textfiledtext),),
//                     Padding(
//                       padding:  EdgeInsets.only(left: 2.w,right: 2.w),
//                       child: Image.asset(ImagePath.circle,fit: BoxFit.cover,height: 0.9.h,color: CustomColors.textfiledtext,),
//                     ),
//                     Text(AppString.Direct,style: CustomStyles.textStyle(fontColor: CustomColors.textfiledtext),),
//                   ],
//                 ),
//                 SizedBox(height: 2.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CustomContainer(
//                       height: 3.h,
//                       width: 25.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         color: CustomColors.contcolor,
//                       ),
//                       child: Center(
//                         child: Text(AppString.ticket,style: TextStyle(color:CustomColors.signuptext1),),
//                       ),
//                     ),
//                     CustomContainer(
//                       height: 3.h,
//                       width: 25.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(7),
//                         gradient: LinearGradient(
//                           colors: [
//                             CustomColors.Buttonbg,
//                             CustomColors.Buttonbg1,
//                           ],
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(AppString.refund, style: CustomStyles.textStyle(fontColor: CustomColors.Buttontext,),),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget ContainerWidget2 () {
//     return  Column(
//       children: [
//         Container(
//           height: 19.h,
//           width: 90.w,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: CustomColors.border),
//             color: CustomColors.CWhite,
//           ),
//           child: Padding(
//             padding:  EdgeInsets.all(1.5.h),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Image.asset(ImagePath.lion,fit: BoxFit.cover,),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Lion Air",style: TextStyle(fontWeight: FontWeight.bold),),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         CustomContainer(
//                           height: 3.h,
//                           width: 25.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(7),
//                             color: CustomColors.Bbg3,
//                           ),
//                           child: Center(
//                             child: Text(AppString.refund,style: TextStyle(color:CustomColors.BText3),),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.5.h,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.YA,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                     Image.asset(ImagePath.eticket,fit: BoxFit.cover,),
//                     Column(
//                       children: [
//                         Text(AppString.t900PM,style: TextStyle(color: CustomColors.signuptext1,fontSize: 10.sp),),
//                         Text(AppString.LOP,style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.bold),),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 1.h,),
//                 Row(
//                   children: [
//                     Text(AppString.alreadyrefunded,style: CustomStyles.textStyle(fontColor: CustomColors.signuptext1,fontWeight: FontWeight.bold,),),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
// }

//

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:travelapp/Constant/AppString.dart';

import '../Constant/Image_Path.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';
import '../Routes/Routes.dart';

class ETicket2 extends StatefulWidget {
   ETicket2({super.key});

   @override
  State<ETicket2> createState() => _ETicket2State();
}

class _ETicket2State extends State<ETicket2> {

  var  _razorpay = Razorpay();
  var options;

  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': 100 * 100,
      'name': 'Sai Gopi YT',
      'description': 'Course Free',
      'prefill': {'contact': '7981686394', 'email': 'test@razorpay.com'}
    };

    super.initState();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    Get.toNamed(Routes.refund);
    // print("_handlePaymentSuccess payment is success +  ${ response.paymentId}" );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
    print("_handlePaymentError payment is failed  +${response.message}");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }


  int selectedIndex = 0;
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
          Padding(
            padding: EdgeInsets.only(top: 4.h,left: 7.w,right: 7.w,),
            child: Container(
              child: Column(
                children: [
                  Row (
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
                        ChoiceChip(label: Text("ALL"),
                          showCheckmark: false,
                          selected: selectedIndex == 0,
                          onSelected: (value) {
                            setState(() {
                              selectedIndex = 0 ;
                            });
                          },
                        ),
                        ChoiceChip(label: Text("completed"),
                          showCheckmark: false,
                          selected: selectedIndex == 1,
                          disabledColor: Colors.transparent,onSelected: (value) {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },),
                        ChoiceChip(label: Text("refunded"),
                          showCheckmark: false,
                          selected: selectedIndex == 2,
                          disabledColor: Colors.transparent,onSelected: (value) {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.h,left: 7.w,right: 7.w,),
            child: SingleChildScrollView(
              child:  Column(
                children: [
                  selectedIndex == 0 ? Column(
                    children: [
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                     ],
                  ) :
                  selectedIndex == 1 ?Column(
                    children: [
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                      ContainerWidget(),
                      SizedBox(height: 4.h,),
                    ],
                  ) :
                  selectedIndex == 2 ? Column(
                    children: [
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                      ContainerWidget2(),
                      SizedBox(height: 4.h,),
                    ],
                  ) : SizedBox(),
                ],
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
        InkWell(
          onTap: () => Get.toNamed(Routes.ticket),
          child: Container(
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
                        child: InkWell(
                          onTap: () {
                            _razorpay.open(options);
                          },
                          child: Center(
                            child: Text(AppString.refund, style: CustomStyles.textStyle(fontColor: CustomColors.Buttontext,),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget ContainerWidget2 () {
    return  Column(
      children: [
        InkWell(
          onTap: () => Get.toNamed(Routes.ticket),
          child: Container(
            height: 19.h,
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
                              color: CustomColors.Bbg3,
                            ),
                            child: Center(
                              child: Text(AppString.refund,style: TextStyle(color:CustomColors.BText3),),
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
                  Row(
                    children: [
                      Text(AppString.alreadyrefunded,style: CustomStyles.textStyle(fontColor: CustomColors.signuptext1,fontWeight: FontWeight.bold,),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



//
// // chips
//
// class chips extends StatefulWidget {
//   const chips({super.key});
//
//   @override
//   State<chips> createState() => _chipsState();
// }
//
// class _chipsState extends State<chips> {
//
//   int selectedIndex1 = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           // Chip(label: Text("Demo"),backgroundColor: Colors.red,),
//           // SizedBox(width: 20,),
//           // Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//           // SizedBox(width: 20,),
//           // Chip(label: Text("Demo"), avatar: CircleAvatar(child: Center(child: Text("A"),),),),
//
//           ChoiceChip(label: Text("Demo"),
//               selected: selectedIndex1 == 0,
//             side: BorderSide(color: Colors.blue),
//             backgroundColor: Colors.white,
//             onSelected: (value) {
//             setState(() {
//               selectedIndex1 = 0 ;
//             });
//             },
//           ),
//           ChoiceChip(label: Text("Demo"), selected: selectedIndex1 == 1, disabledColor: Colors.cyan,onSelected: (value) {
//             setState(() {
//               selectedIndex1 = 1;
//             });
//           },),
//           selectedIndex1 == 0 ? Text("Hello") : Text("Hiii") ,
//         ],
//       ),
//       // body: Container(
//       //   width: 500,
//       //   child: Wrap(
//       //     children: [
//       //       Padding(
//       //           padding: EdgeInsets.all(8.0),
//       //         child: Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //       ),
//       //       Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //       Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //       Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //       Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //       Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //       Chip(label: Text("Demo"), side: BorderSide(color: Colors.blue),backgroundColor: Colors.white,),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
