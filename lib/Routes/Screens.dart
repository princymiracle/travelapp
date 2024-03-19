import 'package:get/get.dart';
import 'package:travelapp/E_Ticket/E_Ticket.dart';
import 'package:travelapp/E_Ticket/E_Ticket2.dart';
import 'package:travelapp/Profile/HelpCenter/Booking.dart';
import 'package:travelapp/Profile/HelpCenter/FAQ.dart';
import 'package:travelapp/Profile/HelpCenter/Fights.dart';
import 'package:travelapp/Profile/HelpCenter/Help_Center.dart';
import 'package:travelapp/Profile/HelpCenter/Payment.dart';
import 'package:travelapp/Screens/CreateNewPassword_Screen.dart';
import 'package:travelapp/Screens/Forget_Password.dart';
import 'package:travelapp/Screens/Forget_Password_otp.dart';
import 'package:travelapp/Screens/Home/Home_Page.dart';
import 'package:travelapp/Screens/RegisterSucces.dart';
import 'package:travelapp/Screens/Signup_Screen.dart';
import '../E_Ticket/Payment_Page.dart';
import '../E_Ticket/Refund.dart';
import '../Profile/Profile.dart';
import '../Profile/ProfileInfo.dart';
import '../Profile/terms_service.dart';
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

    GetPage(name: Routes.homepage, page: () => HomePage(),),

    GetPage(name: Routes.ticket, page: () => ETicket(),),
    GetPage(name: Routes.ticket2, page: () => ETicket2(),),
    GetPage(name: Routes.payment, page: () => PaymentPage(),),
    GetPage(name: Routes.refund, page: () => RefundPage(),),

    GetPage(name: Routes.profile, page: () => ProfilePage(),),
    GetPage(name: Routes.profileinfo, page: () => ProfilrInfo(),),
    GetPage(name: Routes.termsservice, page: () => TermsService(),),
    GetPage(name: Routes.helpcenter, page: () => HelpCenter(),),
    GetPage(name: Routes.faq, page: () => FAQ(),),
    GetPage(name: Routes.booking, page: () => Booking(),),
    GetPage(name: Routes.Paymenthelp, page: () => Payment_Help(),),
    GetPage(name: Routes.fights, page: () => Fights(),),

  ];
}