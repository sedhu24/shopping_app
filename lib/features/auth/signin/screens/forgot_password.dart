import 'package:flutter/material.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/common/custom_text_field.dart';
import 'package:shopping_app/constants/globalvariables.dart';
import 'package:shopping_app/features/auth/signin/screens/password_otp.dart';

class ForgotPassword extends StatefulWidget {
  static const String routeName = '/forgotpassword-screen';
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: GlobalVarialbes.secondaryTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                child: Image.asset("assets/res/forgotpassword.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: const Text(
                  "Please Enter Your Mobile Number to Receive a Verification Code",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mobile",
                      style: TextStyle(
                          color: GlobalVarialbes.secondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      hinttext: "Mobile",
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Commonbutton(
                    textColor: Colors.white,
                    bgcolor: GlobalVarialbes.secondaryColor,
                    text: "Generate OTP",
                    onTap: () {
                      Navigator.pushNamed(
                          context, PasswordOtpVerifyScreen.routeName);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
