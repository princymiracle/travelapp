import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/BottamNavigationbar/bottomnavigationbar.dart';
import 'package:travelapp/bttomsheet/bttomsheet.dart';

import 'package:travelapp/route/routes.dart';
import 'package:travelapp/route/screen.dart';
import 'BottamNavigationbar/DiscountPage/VoucherDetails.dart';
import 'BottamNavigationbar/HomePage/BookTicketPage/SuccessFullyPage.dart';
import 'BottamNavigationbar/TicketPage/RefundPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return  GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme:Theme.of(context).textTheme,
            fontFamily: "PlusJakartaSans",
          ),
          getPages:Screens.routes,
          initialRoute: Routes.splashScreen,
         /*home: RefundPage(),*/
        );
      },
    );
   /* return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BotomNavigationBar(),
    );*/
  }
}

