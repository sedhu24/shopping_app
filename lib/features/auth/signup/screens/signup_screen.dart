import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/common/custom_text_field.dart';
import 'package:shopping_app/common/utils.dart';
import 'package:shopping_app/constants/globalvariables.dart';
import 'package:shopping_app/features/auth/signin/screens/signin_screen.dart';
import 'package:shopping_app/features/auth/signup/screens/signup_otp.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late bool _passwordVisible;

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
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),

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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                size: 16,
                                color: Colors.white,
                                Icons.arrow_forward_ios,
                              ),
                            ],
                          ),
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
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/res/logo2.png"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    height: 550,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Welcome!",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: GlobalVarialbes.secondaryTextColor,
                              ),
                            ),
                            Text(
                              "Sign up or Login to your Account",
                              style: TextStyle(
                                fontSize: 16,
                                color: GlobalVarialbes.secondaryTextColor,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                  color: GlobalVarialbes.secondaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                              hinttext: "Name",
                            )
                          ],
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

                            const SizedBox(
                              height: 20,
                            ),

                            Commonbutton(
                              text: "Sign Up ",
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SignupOtp.routeName);
                              },
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
                                      context, SignInScreen.routeName);
                                },
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Already Have an account? ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: GlobalVarialbes.secondaryColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " Sign In",
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
      ),
    );

    //  Scaffold(
    //     body: SingleChildScrollView(
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(horizontal: 30),
    //     child: Column(
    //       children: [
    //         Container(
    //           margin: const EdgeInsets.only(
    //             top: 40,
    //           ),
    //           child:
    //               // sign up  text row
    //               Row(
    //             children: [
    //               InkWell(
    //                   onTap: () => Navigator.pop(context),
    //                   child: const Icon(
    //                     Icons.arrow_back_outlined,
    //                     color: GlobalVarialbes.secondaryTextColor,
    //                   )),
    //               const SizedBox(
    //                 width: 10,
    //               ),
    //               const Text(
    //                 "Sign Up",
    //                 style: TextStyle(
    //                     fontSize: 26,
    //                     fontWeight: FontWeight.w500,
    //                     color: Color.fromARGB(255, 62, 73, 88)),
    //                 // background: rgba(62, 73, 88, 1);
    //               ),
    //             ],
    //           ),
    //         ),

    //         const SizedBox(
    //           height: 50,
    //         ),

    //         //  name column
    //         Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: const [
    //             Text(
    //               "Name",
    //               style: TextStyle(
    //                   color: GlobalVarialbes.secondaryTextColor,
    //                   fontWeight: FontWeight.w700),
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             CustomTextField(
    //               hinttext: "Name",
    //             )
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),

    //         // email column
    //         Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: const [
    //             Text(
    //               "E-mail",
    //               style: TextStyle(
    //                   color: GlobalVarialbes.secondaryTextColor,
    //                   fontWeight: FontWeight.w700),
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             CustomTextField(
    //               hinttext: "E-mail",
    //             )
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),

    //         // password columm
    //         Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             const Text(
    //               "Password",
    //               style: TextStyle(
    //                   color: GlobalVarialbes.secondaryTextColor,
    //                   fontWeight: FontWeight.w700),
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             CustomTextField(
    //               sufixIcon: IconButton(
    //                 onPressed: () {
    //                   setState(() {
    //                     _passwordVisible = !_passwordVisible;
    //                   });
    //                 },
    //                 icon: Icon(
    //                   _passwordVisible
    //                       ? Icons.visibility
    //                       : Icons.visibility_off,
    //                   color: GlobalVarialbes.textfieldcolors,
    //                 ),
    //               ),
    //               obsecureText: !_passwordVisible,
    //               hinttext: "Password",
    //             )
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 40,
    //         ),

    //         // Sign Up Button
    //         Commonbutton(
    //           text: "Sign Up ",
    //           onTap: () {},
    //           bgcolor: GlobalVarialbes.secondaryColor,
    //           textColor: Colors.white,
    //         ),
    //         const SizedBox(
    //           height: 40,
    //         ),
    //         Container(
    //           color: Colors.black12,
    //           width: 20,
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Container(
    //               color: Colors.black12,
    //               width: MediaQuery.of(context).size.width / 4,
    //               height: 5,
    //             ),
    //             const Text(
    //               "  Or sign up with  ",
    //               style: TextStyle(
    //                   color: GlobalVarialbes.secondaryTextColor,
    //                   fontWeight: FontWeight.w700),
    //             ),
    //             Container(
    //               alignment: Alignment.center,
    //               color: Colors.black12,
    //               width: MediaQuery.of(context).size.width / 4,
    //               height: 5,
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 40,
    //         ),

    //         // Social Login Row
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Container(
    //               decoration: const BoxDecoration(
    //                 color: GlobalVarialbes.textfieldcolors,
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(10),
    //                 ),
    //               ),
    //               height: 60,
    //               width: 130,
    //               child: IconButton(
    //                 icon: const FaIcon(
    //                   FontAwesomeIcons.facebookF,
    //                   size: 30,
    //                   color: Colors.white,
    //                 ),
    //                 onPressed: () {
    //                   showSnackBar(context, "Facebook login in progress");
    //                 },
    //               ),
    //             ),
    //             Container(
    //               decoration: const BoxDecoration(
    //                 color: GlobalVarialbes.textfieldcolors,
    //                 borderRadius: BorderRadius.all(
    //                   Radius.circular(10),
    //                 ),
    //               ),
    //               height: 60,
    //               width: 130,
    //               child: IconButton(
    //                 icon: const FaIcon(
    //                   FontAwesomeIcons.google,
    //                   size: 30,
    //                   color: Colors.white,
    //                 ),
    //                 onPressed: () {
    //                   showSnackBar(context, "Google login in progress");
    //                 },
    //               ),
    //             )
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 50,
    //         ),
    //         //
    //         GestureDetector(
    //           onTap: () {
    //             debugPrint("  =>  ");
    //             Navigator.pushNamed(context, SignInScreen.routeName);
    //           },
    //           child: Container(
    //             alignment: Alignment.center,
    //             child: RichText(
    //               text: const TextSpan(
    //                 text: 'Already have an account? ',
    //                 style: TextStyle(
    //                   fontSize: 16,
    //                   fontWeight: FontWeight.w500,
    //                   color: GlobalVarialbes.secondaryTextColor,
    //                 ),
    //                 children: [
    //                   TextSpan(
    //                     text: "Sign In",
    //                     style: TextStyle(
    //                         fontSize: 16,
    //                         color: GlobalVarialbes.secondaryTextColor,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // ));
  }
}
