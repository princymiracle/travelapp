import 'package:get/get.dart';
import 'package:travelapp/Screens/CreateNewPassword_Screen.dart';
import 'package:travelapp/Screens/Forget_Password.dart';
import 'package:travelapp/Screens/Forget_Password_otp.dart';
import 'package:travelapp/Screens/RegisterSucces.dart';
import 'package:travelapp/Screens/Signup_Screen.dart';
import '../Screens/Login_Screen.dart';
import '../Screens/Splash_2.dart';
import '../Screens/Splash_Screen.dart';
import 'Routes.dart';

class Screens {

  static final routes = [
    GetPage(name: Routes.splashScreen, page: () => SplashScreen()),
    GetPage(name: Routes.splashScreen2, page: () => SplashS2()),
    GetPage(name: Routes.loginScreen, page: () => LoginScreen()),
    GetPage(name: Routes.signupScreen, page: () => SignupScreen()),
    GetPage(name: Routes.forgetpassword, page: () => ForgetPassword(),),
    GetPage(name: Routes.fpotp, page: () => FPotp(),),
    GetPage(name: Routes.newpass, page: () => NewPassword(),),
    GetPage(name: Routes.registersucces, page: () => RegisterSucces(),),

  ];
}