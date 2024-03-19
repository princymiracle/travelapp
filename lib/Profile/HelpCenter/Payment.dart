import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Constant/AppString.dart';
import '../../Custom_Elements/Elements/Custom_AppBar.dart';
import '../../Custom_Elements/Elements/Custom_Color.dart';
import '../../Custom_Elements/Elements/Custom_Styles.dart';

class Payment_Help extends StatelessWidget {
   Payment_Help({super.key});

   TextEditingController searchController = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: CustomAppBar(title: AppString.payment, height: 9.h,),
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
                 Text(AppString.populartopics,style: CustomStyles.textStyle(fontWeight: FontWeight.bold),),
                 Padding(
                   padding:  EdgeInsets.only(top: 2.h,),
                   child: Column(
                     children: [
                       ExpansionTile(title: Text(AppString.pque1,),
                         children: [
                           ListTile(
                             title: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(AppString.pa1),
                                 Text(AppString.pa2),
                                 Text(AppString.pa3),
                               ],
                             ),
                           ),
                         ],
                       ),
                       ExpansionTile(title: Text(AppString.pque2,),
                         children: [
                           ListTile(
                             title: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(AppString.pa21),
                                 Text(AppString.pa22),
                                 Text(AppString.pa23),
                               ],
                             ),
                           ),
                         ],
                       ),
                       ExpansionTile(title: Text(AppString.pque3,),
                         children: [
                           ListTile(
                             title: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(AppString.pa31),
                                 Text(AppString.pa32),
                                 Text(AppString.pa33),
                               ],
                             ),
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
