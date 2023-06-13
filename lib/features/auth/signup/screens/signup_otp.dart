import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/constants/globalvariables.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_screen.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_success.dart';

class SignupOtp extends StatefulWidget {
  static const String routeName = '/signup-otp-screen';
  const SignupOtp({super.key});

  @override
  State<SignupOtp> createState() => _SignupOtpState();
}

class _SignupOtpState extends State<SignupOtp> {
  final int phonenumber = 6380202438;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      "Enter verification code",
                      style: TextStyle(
                        fontSize: 20,
                        color: GlobalVarialbes.secondaryTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "A code has been sent to ",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: "+91 $phonenumber",
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Pinput(
                      defaultPinTheme: PinTheme(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.pink,
                            ),
                          )),
                      followingPinTheme: PinTheme(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Don't receive a code? ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: GlobalVarialbes.secondaryTextColor,
                        ),
                        children: [
                          TextSpan(
                            text: "Resend",
                            style: TextStyle(
                                fontSize: 16,
                                color: GlobalVarialbes.secondaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      width: 250,
                      child: Commonbutton(
                          textColor: Colors.white,
                          bgcolor: GlobalVarialbes.secondaryColor,
                          text: "Verify Now",
                          onTap: () {
                            Navigator.pushNamed(
                                context, SignUpSucessScreen.routeName);
                          }),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
