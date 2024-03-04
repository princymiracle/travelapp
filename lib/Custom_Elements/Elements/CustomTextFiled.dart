import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'Custom_Color.dart';

class CustomTextFiled extends StatelessWidget {
  String hintext;
  TextEditingController controller;
  VoidCallback? onTap;
  bool? readOnly;
  int? maxLines;
  TextInputType? keyboardType;
  bool? displayError;
  InputBorder? border;
  TextStyle? hintStyle;
  EdgeInsets? contentPadding;
  double? radius;

  CustomTextFiled({
    required this.controller,
    required this.hintext,
    this.maxLines = 1,
    this.keyboardType,
    this.displayError,
    this.onTap,
    this.readOnly = false,
    this.border,
    this.hintStyle,
    this.contentPadding,
    this.radius = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.h,),
      width: MediaQuery.of(context).size.width,
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 5.w),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText:  hintext,
            hintStyle: TextStyle(
                color: CustomColors.textfiledtext,
            ),
          ),
        ),
      ),
    );
  }
}


