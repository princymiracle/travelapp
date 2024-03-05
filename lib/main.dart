import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'Date_Screen.dart';
import 'Routes/Routes.dart';
import 'Routes/Screens.dart';

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
          getPages: Screens.routes,
          initialRoute: Routes.splashScreen,
           //home: DateScreen(),
        );
      },
    );
  }
}
