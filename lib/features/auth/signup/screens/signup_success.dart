import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/common/utils.dart';
import 'package:shopping_app/constants/globalvariables.dart';

class SignUpSucessScreen extends StatefulWidget {
  static const String routeName = '/signup-success-screen';
  const SignUpSucessScreen({super.key});

  @override
  State<SignUpSucessScreen> createState() => _SignUpSucessScreenState();
}

class _SignUpSucessScreenState extends State<SignUpSucessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                "assets/lottie/Succezz.json",
                height: 200.0,
                repeat: true,
                reverse: false,
                animate: true,
              ),
              const SizedBox(
                width: 150,
                child: Text(
                  "Account created successful",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 200,
                child: Commonbutton(
                  text: "Get Started",
                  bgcolor: GlobalVarialbes.secondaryColor,
                  textColor: Colors.white,
                  onTap: () {
                    showSnackBar(context, "Ok");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
