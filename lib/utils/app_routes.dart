import 'package:get/get.dart';
import 'package:monmatics/app/auth/forget_password/check_email.dart';
import 'package:monmatics/app/auth/forget_password/forgot_password.dart';
import 'package:monmatics/app/auth/forget_password/reset_password.dart';
import 'package:monmatics/app/auth/forget_password/set_password.dart';
import 'package:monmatics/app/auth/forget_password/successful_password.dart';
import 'package:monmatics/app/screens/main_screen/main_screen.dart';
import 'package:monmatics/app/screens/onboarding/welcome_auth/welcome_auth.dart';
import 'package:monmatics/app/screens/onboarding/splashscreen.dart/splash_screen.dart';
import 'package:monmatics/app/screens/onboarding/welcome/welcome.dart';
import 'package:monmatics/app/screens/profile_screen.dart/profile/edit_profile.dart';
import 'package:monmatics/app/screens/profile_screen.dart/profile/profile.dart';

class AppRoutes {
  static const String splashscreen = '/splashscreen';
  static const String welcome = '/welcome';
  static const String welcomeAuth = '/welcomeAuth';
  static const String forgetPassword = '/forgetPassword';
  static const String checkEmail = '/checkEmail';
  static const String passwordReset = '/passwordReset';
  static const String setPassword = '/setPassword';
  static const String successfullPassword = '/successfullPassword';

  static const String mainScreen = '/mainScreen';
  static const String profile = '/profile';
  static const String editProfile = '/editProfile';

  static final routes = [
    GetPage(name: AppRoutes.splashscreen, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.welcome, page: () => const WelcomeScreen()),
    GetPage(name: AppRoutes.welcomeAuth, page: () => const WelcomeAuthScreen()),
    GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: AppRoutes.checkEmail, page: () => const CheckEmail()),
    GetPage(name: AppRoutes.passwordReset, page: () => const ResetPassword()),
    GetPage(name: AppRoutes.setPassword, page: () => const SetPassword()),
    GetPage(name: AppRoutes.mainScreen, page: () => const MainScreen()),
    GetPage(name: AppRoutes.profile, page: () => const Profile()),
    GetPage(name: AppRoutes.editProfile, page: () => const EditProfile()),
    GetPage(
        name: AppRoutes.successfullPassword,
        page: () => const SuccessfulPassword()),
  ];
}
