import 'package:flutter/material.dart';
import 'package:shopping_app/features/auth/signin/screens/forgot_password.dart';
import 'package:shopping_app/features/auth/signin/screens/new_password.dart';
import 'package:shopping_app/features/auth/signin/screens/password_otp.dart';
import 'package:shopping_app/features/auth/signin/screens/signin_screen.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_otp.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_screen.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_success.dart';
import 'package:shopping_app/features/getstarted/screen/getting_started.dart';
import 'package:shopping_app/features/splashscreen/splashscreen.dart';

//  static const String routeName = '/auth-screen';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );

    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignUpScreen(),
      );

    case SignInScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignInScreen(),
      );

    case GettingStarted.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignInScreen(),
      );
    case SignupOtp.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignupOtp(),
      );
    case SignUpSucessScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignUpSucessScreen(),
      );

    case ForgotPassword.routeName:
      return MaterialPageRoute(
        builder: (_) => const ForgotPassword(),
      );

    case PasswordOtpVerifyScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const PasswordOtpVerifyScreen(),
      );
    case CreateNewPassword.routeName:
      return MaterialPageRoute(
        builder: (_) => const CreateNewPassword(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("screen does not Exist"),
          ),
        ),
      );
  }
}
