import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../features/dashboard/home.dart';
import '../../features/onboarding/bindings/on_boarding_binding.dart';
import '../../features/onboarding/views/on_boarding_view.dart';
import '../../features/splash/splash_binding.dart';
import '../../features/splash/splash_view.dart';

class AppRoutes {
  // Define route names as static constants
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String signup = '/signup';
  // static const String login = '/login';
  // static const String otp = '/otp';
  // static const String otpverified = '/otpverified';
  static const String home = '/home';
  // static const String notification = '/notification';


  // Define a list of pages and their bindings
  static final List<GetPage> pages = [
    GetPage(
      name: splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboarding,
      page: () => OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    // GetPage(
    //   name: signup,
    //   page: () => SignupScreen(),
    //   binding: SignupBinding(),
    // ),
    // GetPage(
    //   name: login,
    //   page: () => LoginScreen(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: otp,
    //   page: () => OTPScreen(),
    // ),
    // GetPage(
    //   name: otpverified,
    //   page: () => OTPVerifiedScreen(),
    // ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
      // binding: HomeBinding(),
    ),
    // GetPage(
    //   name: notification,
    //   page: () => Notificationscreen(),
    //   binding: NotificationBinding(),
    // ),
  ];
}
