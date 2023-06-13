import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/common/custom_text_field.dart';

import 'package:shopping_app/common/utils.dart';
import 'package:shopping_app/constants/globalvariables.dart';
import 'package:shopping_app/features/auth/signin/screens/forgot_password.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/signin-screen';

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late bool _passwordVisible;
  bool? rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe!) {
          showSnackBar(context, "remeber me");
        } else {
          showSnackBar(context, "don' tremeber me ");
        }
      });

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: GlobalVarialbes.secondaryColor,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  //  skip
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Skip"),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          color: Colors.white,
                          Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),

                  //gap
                  const SizedBox(
                    height: 10,
                  ),

                  // logo
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/res/logo2.png"),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    height: 495,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: GlobalVarialbes.secondaryTextColor,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Mobile",
                              style: TextStyle(
                                  color: GlobalVarialbes.secondaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hinttext: "Mobile",
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Password",
                              style: TextStyle(
                                  color: GlobalVarialbes.secondaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              sufixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: GlobalVarialbes.textfieldcolors,
                                ),
                              ),
                              obsecureText: !_passwordVisible,
                              hinttext: "Password",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(
                                  activeColor: GlobalVarialbes.secondaryColor,
                                  value: rememberMe,
                                  onChanged: _onRememberMeChanged,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, ForgotPassword.routeName);
                                  },
                                  child: const Text(
                                    "Forgot Pasword?",
                                    style: TextStyle(
                                        color:
                                            GlobalVarialbes.secondaryTextColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            Commonbutton(
                              text: "Sign In ",
                              onTap: () {},
                              bgcolor: GlobalVarialbes.secondaryColor,
                              textColor: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width / 4,
                                  height: 2,
                                ),
                                const Text(
                                  "  OR ",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width / 4,
                                  height: 2,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            // Social Login Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: GlobalVarialbes.secondaryColor),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      size: 20,
                                      color: GlobalVarialbes.textfieldcolors,
                                    ),
                                    onPressed: () {
                                      showSnackBar(context,
                                          "Facebook login in progress");
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: GlobalVarialbes.secondaryColor),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.google,
                                      size: 20,
                                      color: GlobalVarialbes.textfieldcolors,
                                    ),
                                    onPressed: () {
                                      showSnackBar(context,
                                          "Facebook login in progress");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //
                            // Sign up Nav
                            Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignUpScreen.routeName);
                                },
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Create New Account? ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: GlobalVarialbes.secondaryColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Sign Up",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),

        // Column(
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.only(top: 10, right: 20),
        //       height: 235,
        //       decoration: const BoxDecoration(
        //         color: GlobalVarialbes.secondaryColor,
        //       ),
        //       child:

        //     ),

        //   ],
        // ),
      ),
    );
  }
}
