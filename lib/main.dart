import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'E_Ticket/E_Ticket.dart';
import 'E_Ticket/E_Ticket2.dart';
import 'E_Ticket/E_Ticket_Payment.dart';
import 'E_Ticket/Payment_Page.dart';
import 'E_Ticket/Refund.dart';
import 'Profile/Profile.dart';
import 'Profile/terms_service.dart';
import 'Routes/Routes.dart';
import 'Routes/Screens.dart';
import 'Select_Flights.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // getPages: Screens.routes,
          // initialRoute: Routes.splashScreen,
           //home: DateScreen(),
        //  home: ProfilePage(),
          // getPages: Screens.routes,
          // initialRoute: Routes.ticket,
          getPages: Screens.routes,
          initialRoute: Routes.profile,
        );
      },
    );
  }
}

