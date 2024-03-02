import 'package:get/get.dart';
import '../Screens/Login_Screen.dart';
import '../Screens/Splash_2.dart';
import '../Screens/Splash_Screen.dart';
import 'Routes.dart';

class Screens {

  static final routes = [
    GetPage(name: Routes.splashScreen, page: () => SplashScreen()),
    GetPage(name: Routes.splashScreen2, page: () => SplashS2()),
    GetPage(name: Routes.loginScreen, page: () => LoginScreen()),

  ];
}