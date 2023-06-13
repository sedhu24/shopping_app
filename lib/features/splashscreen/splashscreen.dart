import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_app/features/getstarted/screen/getting_started.dart';

import '../auth/signin/screens/signin_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
              context,
              GettingStarted.routeName,
              (route) => false,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("assets/res/logo.png"),
              ),
            ),
            // Align(
            //     alignment: Alignment.bottomCenter,
            //     child: SizedBox(
            //       height: 150,
            //       width: double.infinity,
            //       child: Container(
            //         margin: const EdgeInsets.symmetric(horizontal: 30),
            //         alignment: Alignment.bottomCenter,
            //         child: Column(
            //           children: [
            //             Commonbutton(
            //               onTap: () {
            //                 Navigator.pushNamed(
            //                     context, SignUpScreen.routeName);
            //               },
            //               text: "Sign Up",
            //               bgcolor: Colors.white,
            //               textColor: GlobalVarialbes.secondaryColor,
            //             ),
            //             const SizedBox(
            //               height: 10,
            //             ),
            //             Commonbutton(
            //               onTap: () {
            //                 debugPrint("+= Clicked => Sign In");
            //                 Navigator.pushNamed(
            //                     context, SignInScreen.routeName);
            //               },
            //               text: "Sign In",
            //               bgcolor: GlobalVarialbes.secondaryColor,
            //               textColor: Colors.white,
            //             )
            //           ],
            //         ),
            //       ),
            //     )),
          ],
        ));
  }
}
