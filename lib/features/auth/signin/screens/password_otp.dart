import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/constants/globalvariables.dart';
import 'package:shopping_app/features/auth/signin/screens/new_password.dart';

class PasswordOtpVerifyScreen extends StatefulWidget {
  static const String routeName = '/forgotpasswordotp-screen';
  const PasswordOtpVerifyScreen({super.key});

  @override
  State<PasswordOtpVerifyScreen> createState() =>
      _PasswordOtpVerifyScreenState();
}

class _PasswordOtpVerifyScreenState extends State<PasswordOtpVerifyScreen> {
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
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    "Enter verification code",
                    style: TextStyle(
                      fontSize: 20,
                      color: GlobalVarialbes.secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: RichText(
                        text: TextSpan(
                          text:
                              "Please Enter the verification code sent to the ",
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
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Pinput(
                      length: 6,
                      defaultPinTheme: PinTheme(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                              color: Colors.pink,
                            ),
                          )),
                      followingPinTheme: PinTheme(
                          height: 45,
                          width: 45,
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
                          text: "Verify OTP",
                          onTap: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                CreateNewPassword.routeName, (route) => false);
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
