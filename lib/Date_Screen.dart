// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:travelapp/Custom_Elements/Elements/CustomButtons.dart';
//
// class DateScreen extends StatelessWidget {
//   const DateScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding:  EdgeInsets.all(6.w),
//                 child: CustomButton(
//                   title: 'SAVE',
//                  onTap: () {
//                    _displayBottomSheet(context);
//                  },
//                 ),
//               ),
//             ],
//           ),
//         ),
//     );
//   }
//
//   Future _displayBottomSheet(BuildContext context) {
//     return showModalBottomSheet(
//         context: context,
//         builder: (context) => Container(
//           height: 600,
//         ),
//     );
//   }
//
// }
//
//
// class Date extends StatefulWidget {
//   const Date({super.key});
//
//   @override
//   State<Date> createState() => _DateState();
// }
//
// class _DateState extends State<Date> {
//   DateTime today = DateTime.now();
//   void _onDaySelected(DateTime day, DateTime focusedDay){
//     setState(() {
//       today = day;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: content(),
//     );
//   }
//
//    Widget content () {
//     return Padding(
//       padding:  EdgeInsets.all(5.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Calendar",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
//           Divider(height: 1.h,),
//           Container(
//             child: TableCalendar(
//               locale: "en_US",
//                 rowHeight: 43,
//                 headerStyle:
//                      HeaderStyle(formatButtonVisible: false,titleCentered: true),
//                 availableGestures: AvailableGestures.all,
//                 selectedDayPredicate: (day) => isSameDay(day, today),
//                 focusedDay: today,
//                 firstDay: DateTime.utc(2010, 10, 16),
//                 lastDay: DateTime.utc(2030, 3, 14),
//               onDaySelected: _onDaySelected,
//             ),
//           ),
//         ],
//       ),
//     );
//    }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travelapp/Custom_Elements/Elements/CustomButtons.dart';

class DateCalendar extends StatefulWidget {
  @override
  State<DateCalendar> createState() => _DateCalendarState();
}

class _DateCalendarState extends State<DateCalendar> {

  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 3.w,right: 3.w, bottom: 4.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              onTap:  () {
                showModalBottomSheet(
                  context: context,scrollControlDisabledMaxHeightRatio: 12.w,
                  builder: (context) {
                    return Padding(
                      padding:  EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Calendar",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                            Divider(height: 5.h,),
                            Container(
                              child: TableCalendar(
                                locale: "en_US",
                                rowHeight: 43,
                                headerStyle:
                                HeaderStyle(formatButtonVisible: false,titleCentered: true),
                                availableGestures: AvailableGestures.all,
                                selectedDayPredicate: (day) => isSameDay(day, today),
                                focusedDay: today,
                                firstDay: DateTime.utc(2010, 10, 16),
                                lastDay: DateTime.utc(2030, 3, 14),
                                onDaySelected: _onDaySelected,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 4.h,right: 7.h, top: 4.w,bottom: 4.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Depart",style: TextStyle(color: Colors.blue),),
                                        Text("2 Sep 2024",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Return",style: TextStyle(color: Colors.blue),),
                                        Text("2 Sep 2024",style: TextStyle(fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomButton(title: "SAVE"),
                            SizedBox(height: 2.h,),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }, title: 'SAVE',
            ),
          ],
        ),
      ),
    );
  }
}
