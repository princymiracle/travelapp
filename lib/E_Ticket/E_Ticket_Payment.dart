import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:travelapp/Custom_Elements/Elements/Custom_RadioButton.dart';
import '../Constant/AppString.dart';
import '../Custom_Elements/Elements/Custom_AppBar.dart';

class ETicketpayment extends StatefulWidget {
   ETicketpayment({super.key});

  @override
  State<ETicketpayment> createState() => _ETicketpaymentState();
}

class _ETicketpaymentState extends State<ETicketpayment> {
  var arrNames = ["credit / debit card", "Net Banking", "UPI Payment","Wallet"];

  var arrImages = [
    "assets/images/eticket1.png",
    "assets/images/Eticket2.png",
    "assets/images/Eticket3.png",
    "assets/images/Etick4.png",
  ];

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppString.eticket, height: 10.h,),
      body: Padding(
        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 4.h),
        child: Container(
          child: ListView.separated(itemBuilder: (context, index) {
            return Container(
              height: 7.h,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],
              ),
              child: ListTile(
                leading: Image.asset(arrImages[index]),
                title: Text(arrNames[index]),
                //trailing: Icon(Icons.add),
                trailing: CustomRadioButton(
                    value: index,
                    groupValue: _value,
                  onChanged: (int? value) {
                      setState(() {
                        _value = value?? 0;
                      });
                  },
                ),
              ),
            );
          },
            itemCount: arrNames.length,
              separatorBuilder:(context, index) {
                return SizedBox(height: 2.h,);
              },
          ),
        ),
      ),
    );
  }
}
