import 'package:get/get.dart';
import 'package:green_house/component/constants/middleWare.dart';
import 'package:green_house/view/bottomBar/home.dart';
import 'package:green_house/view/bottomBar/settings.dart';
import 'package:green_house/view/configration/configration.dart';
import 'package:green_house/view/face%20id/faceid.dart';
import 'package:green_house/view/join%20us/join_us.dart';
import 'package:green_house/view/main/app.dart';
import 'package:green_house/view/reads/Reads.dart';
import 'package:green_house/view/resetpassword/resetpassword.dart';
import 'package:green_house/view/bottomBar/useraccount.dart';
import 'package:green_house/view/test_view.dart';
import '../bottomBar/chat.dart';
import '../onboarding/onboardingscreen.dart';
import '../forgetpassword/forgetpassword_view.dart';
import '../pincode/pincode.dart';
import '../register/register_view.dart';
import '../splash/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onboardingscreenRoute = "/onboardingscreen";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotpasswordRoute = "/forgotpassword";
  static const String mainRoute = "/main";
  static const String storedetailsRoute = "/storedetails";
  static const String PinCode = "/pincode";
  static const String UserAccount = "/useraccount";
  static const String resetpassword = "/resetpassword";
  static const String joinus = "/joinus";
  static const String faceid = "/faceid";
  static const String setting = "/setting";
  static const String chat = "/chat";
  static const String home = "/home";
  static const String configration = "/configration";
  static const String reads = "/reads";
}

List<GetPage<dynamic>>? route = [
  GetPage(
    name: "/", page: () => TestScreen(),

    // middlewares:[MiddleWare()]
  ),
  GetPage(name: Routes.onboardingscreenRoute, page: () => OnboardingView()),
  GetPage(name: Routes.registerRoute, page: () => RegisterView()),
  GetPage(name: Routes.forgotpasswordRoute, page: () => PasswordView()),
  GetPage(name: Routes.PinCode, page: () => PinCode()),
  GetPage(name: Routes.UserAccount, page: () => UserAccount()),
  GetPage(name: Routes.home, page: () => Home_view()),
  GetPage(name: Routes.setting, page: () => Settings()),
  GetPage(name: Routes.chat, page: () => Chat()),
  GetPage(name: Routes.configration, page: () => Configration_View()),
  GetPage(name: Routes.reads, page: () => Reads_View()),
  GetPage(name: Routes.joinus, page: () => JoinUs()),
  GetPage(name: Routes.resetpassword, page: () => ResetPassword()),
  GetPage(name: Routes.mainRoute, page: () => MyApp()),
  GetPage(name: Routes.faceid, page: () => FaceId()),
  GetPage(name: Routes.splashRoute, page: () => SplashView()),
  GetPage(name: Routes.splashRoute, page: () => SplashView()),
];

/*
  class RouteGenrator {
    static Route<dynamic> getRoute(RouteSettings settings) {
      switch (settings.name) {

        case Routes.splashRoute:
          return MaterialPageRoute(builder: (context) => SplashView(),);
        case Routes.onboardingscreenRoute:
          return MaterialPageRoute(builder: (context) => OnboardingView(),);
        case Routes.loginRoute:
          return MaterialPageRoute(builder: (context) => const LoginView(),);
        case Routes.forgotpasswordRoute:
          return MaterialPageRoute(builder: (context) =>  PasswordView(),);
        case Routes.PinCode:
          return MaterialPageRoute(builder: (context) => const PinCode(),);
        case Routes.registerRoute:
          return MaterialPageRoute(builder: (context) =>  RegisterView(),);
        case Routes.UserAccount:
          return MaterialPageRoute(builder: (context) => const UserAccount(),);
        case Routes.resetpassword:
          return MaterialPageRoute(builder: (context) =>  ResetPassword(),);
        case Routes.setting:
          return MaterialPageRoute(builder: (context) =>  Settings(),);
        case Routes.configration:
          return MaterialPageRoute(builder: (context) =>  Configration_View(),);
        case Routes.chat:
          return MaterialPageRoute(builder: (context) =>  Chat(),);
        case Routes.home:
          return MaterialPageRoute(builder: (context) =>  Home_view(),);
        case Routes.reads:
          return MaterialPageRoute(builder: (context) =>  Reads_View(),);




        default:
          return UnDefinedRoute();
      }
    }

    static Route<dynamic> UnDefinedRoute() {
      return MaterialPageRoute(builder: (context) =>
          Scaffold(

          ));
    }

  }
*/
