import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;
  Size? size;

  CustomButton({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.pressedColor = const Color(0xffBDBCBA),
    this.bgColor =  const Color(0xFF8BD8F9),
    this.onTap,
    this.fontColor = Colors.white,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap!(),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(size ?? (Size(150.w, 5.h )),),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 12),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(bgColor ?? Colors.white60),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSIze ?? 18.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}
