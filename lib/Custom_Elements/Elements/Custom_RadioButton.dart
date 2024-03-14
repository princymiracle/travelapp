import 'package:flutter/material.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_Color.dart';

class CustomRadioButton extends StatefulWidget {
  int value;
  int groupValue;
  Color? color;
  Color? selectColor;
  void Function(int?)? onChanged;

   CustomRadioButton({
    required this.value,
     required this.groupValue,
     this.color = CustomColors.CWhite,
     this.selectColor = CustomColors.signuptext1,
     this.onChanged,
   });

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bool selected = widget.value != widget.groupValue;
        if(selected) {
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        height: 20,
          width: 20,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(15),
          border: Border.all(color: CustomColors.border),
          color: widget.value == widget.groupValue
               ? widget.selectColor
              : widget.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
