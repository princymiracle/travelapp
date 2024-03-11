import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:travelapp/Constant/AppString.dart';
import 'package:travelapp/Routes/Routes.dart';
import '../Constant/Image_Path.dart';
import '../Custom_Elements/Elements/Custom_Color.dart';
import '../Custom_Elements/Elements/Custom_Container.dart';
import '../Custom_Elements/Elements/Custom_Styles.dart';

class FPotp extends StatefulWidget {
  FPotp({super.key});

  @override
  State<FPotp> createState() => _FPotpState();
}

class _FPotpState extends State<FPotp> {
  bool invalidOtp = false;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();

  String strFormatting(n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Image.asset(ImagePath.background, fit: BoxFit.cover,),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    left: 8.w,
                    right: 8.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ImagePath.logimg, fit: BoxFit.cover,),
                      SizedBox(height: 6.h,),
                      Text(
                        AppString.forgetpassword,
                        style: TextStyle(
                          color: CustomColors.texttitle,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Text(
                        AppString.enteryouremailorphonenumber,
                        style: CustomStyles.textStyle(
                          fontColor: CustomColors.textfiledtext,
                          fontSize: 12.sp,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h, bottom: 2.h),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                AppString.verificationcode,
                                style: CustomStyles.textStyle(
                                  fontColor: CustomColors.textfiledtext,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15.w, right: 15.w),
                                child: Divider(
                                  color: CustomColors.textfiledtext,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          myInputBox(context, txt1),
                          myInputBox(context, txt2),
                          myInputBox(context, txt3),
                          myInputBox(context, txt4),
                        ],
                      ),
                      Center(
                        child: Text(
                          invalidOtp ? 'Invalid otp!' : '',
                          style: const TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),

                      SizedBox(height: 3.h,),
                      InkWell(
                        onTap: () {
                          final otp = txt1.text + txt2.text + txt3.text + txt4.text;
                          if (otp == '1234') {
                            Get.toNamed(Routes.newpass);
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute(
                            //     builder: (context) => NewPassword(),
                            //   ),
                            // );
                          } else {
                            setState(() {
                              invalidOtp = true;
                            });
                          }
                        },
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
                              Text(
                                AppString.submit,
                                style: CustomStyles.textStyle(
                                  fontWeight: FontWeight.bold,
                                  fontColor: CustomColors.Buttontext,
                                  fontSize: 15.sp,
                                ),
                              ),
                              SizedBox(width: 1.w,),
                              Icon(Icons.arrow_forward,
                                color: CustomColors.Buttontext, size: 15,),
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
      ),
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    padding: EdgeInsets.only(bottom: 1.h),
    height: 5.h,
    width: 9.w,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius:  BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style:  TextStyle(fontSize: 20),
      decoration:  InputDecoration(
        border: InputBorder.none,
        counterText: '',
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/otp_field_style.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
// import 'package:travelapp/Constant/AppString.dart';
// import '../Constant/Image_Path.dart';
// import '../Custom_Elements/Elements/Custom_Color.dart';
// import '../Custom_Elements/Elements/Custom_Container.dart';
// import '../Custom_Elements/Elements/Custom_Styles.dart';
// import '../Routes/Routes.dart';
// import 'CreateNewPassword_Screen.dart';
//
// class FPotp extends StatefulWidget {
//   FPotp({super.key});
//
//   @override
//   State<FPotp> createState() => _FPotpState();
// }
//
// class _FPotpState extends State<FPotp> {
//     OtpFieldController _otpController = OtpFieldController();
//
//   // void _validateAndNavigate() {
//   //   String otp = _otpController;
//   //   if (otp.isEmpty) {
//   //     Fluttertoast.showToast(
//   //       msg: "OTP cannot be empty",
//   //       toastLength: Toast.LENGTH_SHORT,
//   //       gravity: ToastGravity.BOTTOM,
//   //     );
//   //   } else {
//   //     // Navigate to another page or perform any action here
//   //     Navigator.push(
//   //       context,
//   //       MaterialPageRoute(builder: (context) => NewPassword()),
//   //     );
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CustomColors.backgroundColor,
//       body: Container(
//         child: Stack(
//           children: [
//             Center(
//               child: Image.asset(ImagePath.background, fit: BoxFit.cover,),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     top: 10.h,
//                     left: 8.w,
//                     right: 8.w,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(ImagePath.logimg, fit: BoxFit.cover,),
//                       SizedBox(height: 6.h,),
//                       Text(
//                         AppString.forgetpassword,
//                         style: TextStyle(
//                           color: CustomColors.texttitle,
//                           fontSize: 19.sp,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 1.h,),
//                       Text(
//                         AppString.enteryouremailorphonenumber,
//                         style: CustomStyles.textStyle(
//                           fontColor: CustomColors.textfiledtext,
//                           fontSize: 12.sp,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 4.h, bottom: 1.h),
//                         child: Center(
//                           child: Column(
//                             children: [
//                               Text(
//                                 AppString.verificationcode,
//                                 style: CustomStyles.textStyle(
//                                   fontColor: CustomColors.textfiledtext,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                     left: 15.w, right: 15.w),
//                                 child: Divider(
//                                   color: CustomColors.textfiledtext,
//                                   thickness: 2,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 1.w),
//                         child: OTPTextField(
//                            controller: _otpController,
//                           keyboardType: TextInputType.number,
//                           length: 4,
//                           fieldWidth: 14.w,
//                           otpFieldStyle: OtpFieldStyle(
//                             enabledBorderColor: CustomColors.CWhite,
//                             borderColor: CustomColors.CWhite,
//                             focusBorderColor: CustomColors.CWhite,
//                             disabledBorderColor: CustomColors.CWhite,
//                             errorBorderColor: CustomColors.CWhite,
//                             backgroundColor: Colors.blueGrey.withOpacity(0.3),
//                           ),
//                           fieldStyle: FieldStyle.box,
//                           style: TextStyle(color: CustomColors.textfiledtext,
//                               fontWeight: FontWeight.bold),
//                           outlineBorderRadius: 10,
//                           // onChanged: (value) {
//                           //   _otp = value;
//                           // },
//                           width: double.infinity,
//                         ),
//                       ),
//
//                       SizedBox(height: 3.h,),
//                       InkWell(
//                       //  onTap:  _validateAndNavigate,
//                         // onTap: () {
//                         //   showSnackBar(context);
//                         //   // Utils.showSnackBar(context);
//                         // },
//
//                         // onTap: () {
//                         //  setState(() {
//                         //    if(_otp.length == 4){
//                         //      _otpController.clear();
//                         //      Get.toNamed(Routes.newpass);
//                         //    }else{
//                         //      print("Please enter your valid otp ");
//                         //      Navigator.pop(context);
//                         //    }
//                         //  });
//                         // },
//                         // onTap: () => Get.toNamed(Routes.newpass),
//                         child: CustomContainer(
//                           height: 6.5.h,
//                           width: 85.w,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(18),
//                             gradient: LinearGradient(
//                               colors: [
//                                 CustomColors.Buttonbg,
//                                 CustomColors.Buttonbg1,
//                               ],
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 AppString.submit,
//                                 style: CustomStyles.textStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontColor: CustomColors.Buttontext,
//                                   fontSize: 15.sp,
//                                 ),
//                               ),
//                               SizedBox(width: 1.w,),
//                               Icon(Icons.arrow_forward,
//                                 color: CustomColors.Buttontext, size: 15,),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//    // showSnackBar(context) {
//    //      return ScaffoldMessenger.of(context).showSnackBar(
//    //        SnackBar(content: Text(
//    //          "Please anter your OTP ...!",
//    //          style: TextStyle(color: Colors.white, fontSize: 20,),
//    //        ),
//    //        ),
//    //      );
//    //  }
// }
//   // Widget showMessages(){
//   //   return showSnackBar(context) {
//   //     return ScaffoldMessenger.of(context).showSnackBar(
//   //       SnackBar(content: Text(
//   //         "Please anter your OTP ...!",
//   //         style: TextStyle(color: Colors.white, fontSize: 20,),
//   //       ),
//   //       ),
//   //     );
//   // }
//    // void _validateOTP() {
//    //   String enteredOTP = _otpController.toString();
//    //   if (enteredOTP == _otp) {
//    //     // OTP is correct
//    //     showDialog(
//    //       context: context,
//    //       builder: (BuildContext context) {
//    //         return AlertDialog(
//    //           title: Text('Success'),
//    //           content: Text('OTP is correct.'),
//    //           actions: <Widget>[
//    //             TextButton(
//    //               onPressed: () {
//    //                 Navigator.of(context).pop();
//    //               },
//    //               child: Text('OK'),
//    //             ),
//    //           ],
//    //         );
//    //       },
//    //     );
//    //   } else {
//    //     // Incorrect OTP
//    //     showDialog(
//    //       context: context,
//    //       builder: (BuildContext context) {
//    //         return AlertDialog(
//    //           title: Text('Error'),
//    //           content: Text('Incorrect OTP. Please try again.'),
//    //           actions: <Widget>[
//    //             TextButton(
//    //               onPressed: () {
//    //                 Navigator.of(context).pop();
//    //               },
//    //               child: Text('OK'),
//    //             ),
//    //           ],
//    //         );
//    //       },
//    //     );
//    //   }
//    // }
//
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter_sizer/flutter_sizer.dart';
// // import 'package:get/get.dart';
// // import 'package:otp_text_field/otp_text_field.dart';
// // import 'package:travelapp/Constant/AppString.dart';
// // import '../Constant/Image_Path.dart';
// // import '../Custom_Elements/Elements/Custom_Color.dart';
// // import '../Custom_Elements/Elements/Custom_Container.dart';
// // import '../Custom_Elements/Elements/Custom_Styles.dart';
// // import '../Routes/Routes.dart';
// //
// // class FPotp extends StatefulWidget {
// //   FPotp({Key? key}) : super(key: key);
// //
// //   @override
// //   State<FPotp> createState() => _FPotpState();
// // }
// //
// // class _FPotpState extends State<FPotp> {
// //   late OtpFieldController _otpController;
// //   String _otp = "";
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _otpController = OtpFieldController();
// //   }
// //
// //   @override
// //   void dispose() {
// //     _otpController.clear();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: CustomColors.backgroundColor,
// //       body: Container(
// //         child: Stack(
// //           children: [
// //             Center(
// //               child: Image.asset(ImagePath.background, fit: BoxFit.cover),
// //             ),
// //             SingleChildScrollView(
// //               child: Container(
// //                 child: Padding(
// //                   padding: EdgeInsets.only(
// //                     top: 10.h,
// //                     left: 8.w,
// //                     right: 8.w,
// //                   ),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Image.asset(ImagePath.logimg, fit: BoxFit.cover),
// //                       SizedBox(height: 6.h),
// //                       Text(
// //                         AppString.forgetpassword,
// //                         style: TextStyle(
// //                           color: CustomColors.texttitle,
// //                           fontSize: 19.sp,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       SizedBox(height: 1.h),
// //                       Text(
// //                         AppString.enteryouremailorphonenumber,
// //                         style: CustomStyles.textStyle(
// //                           fontColor: CustomColors.textfiledtext,
// //                           fontSize: 12.sp,
// //                         ),
// //                       ),
// //                       Padding(
// //                         padding: EdgeInsets.only(top: 4.h, bottom: 1.h),
// //                         child: Center(
// //                           child: Column(
// //                             children: [
// //                               Text(
// //                                 AppString.verificationcode,
// //                                 style: CustomStyles.textStyle(
// //                                   fontColor: CustomColors.textfiledtext,
// //                                 ),
// //                               ),
// //                               Padding(
// //                                 padding: EdgeInsets.only(left: 15.w, right: 15.w),
// //                                 child: Divider(
// //                                   color: CustomColors.textfiledtext,
// //                                   thickness: 2,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                       Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: 1.w),
// //                         child: OTPTextField(
// //                           controller: _otpController,
// //                           keyboardType: TextInputType.number,
// //                           length: 4,
// //                           fieldWidth: 14.w,
// //                           outlineBorderRadius: 10,
// //                           style: TextStyle(
// //                             color: CustomColors.textfiledtext,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                           onChanged: (value) {
// //                             _otp = value;
// //                           },
// //                           width: double.infinity,
// //                         ),
// //                       ),
// //                       SizedBox(height: 3.h),
// //                       InkWell(
// //                         onTap: () {
// //                           if (_otp.length == 4) {
// //                             _otpController.clear();
// //                             // Navigating to new page if OTP is valid
// //                             Get.toNamed(Routes.newpass);
// //                           } else {
// //                             print("Please enter a valid OTP");
// //                           }
// //                         },
// //                         child: CustomContainer(
// //                           height: 6.5.h,
// //                           width: 85.w,
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(18),
// //                             gradient: LinearGradient(
// //                               colors: [
// //                                 CustomColors.Buttonbg,
// //                                 CustomColors.Buttonbg1,
// //                               ],
// //                             ),
// //                           ),
// //                           child: Row(
// //                             mainAxisAlignment: MainAxisAlignment.center,
// //                             children: [
// //                               Text(
// //                                 AppString.submit,
// //                                 style: CustomStyles.textStyle(
// //                                   fontWeight: FontWeight.bold,
// //                                   fontColor: CustomColors.Buttontext,
// //                                   fontSize: 15.sp,
// //                                 ),
// //                               ),
// //                               SizedBox(width: 1.w),
// //                               Icon(Icons.arrow_forward, color: CustomColors.Buttontext, size: 15),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// // class Utils {
// //
// //   static
// //   }
// // }
//
// // if {
// // Utils.showToast('The entered OTP is invalid!');
// // } else {
// // Utils.showToast('The entered OTP is invalid!');
// // }


