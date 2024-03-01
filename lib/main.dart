import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:travelapp/Date_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // getPages: Screens.routes,
          // initialRoute: Routes.splashPage,
           home: DateCalendar(),
        );
      },
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home:  DateScreen(),
    // );
  }
}

