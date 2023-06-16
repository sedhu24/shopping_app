import 'package:flutter/material.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/constants/globalvariables.dart';
import 'package:shopping_app/features/auth/signin/screens/signin_screen.dart';
import 'package:shopping_app/features/getstarted/screen/onboardview.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'package:shopping_app/features/getstarted/widgets/headcurve.dart';

class GettingStarted extends StatefulWidget {
  static const String routeName = '/gettingstarted-screen';
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  final SwiperController _swiperController = SwiperController();

  int currentIndex = 0;
  final List<String> contents = [
    "Order from wide Range of Restaurants",
    "Whether you want a pizza,burger or groceries",
    "Order your favorite food and get it involved"
  ];

  final List<String> pageimage = [
    "assets/pageview/pageviewone.png",
    "assets/pageview/pageviewtwo.png",
    "assets/pageview/pageviewthree.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: GlobalVarialbes.secondaryColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 55,
                width: 55,
                margin: const EdgeInsets.only(
                  top: 30,
                  left: 40,
                ),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset("assets/res/logo.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(
                  left: 40,
                ),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Food for Everyone",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 45,
                      height: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomPaint(
              painter: HeaderCurvedContainer(),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    margin: const EdgeInsets.only(top: 220),
                    child: Column(
                      children: [
                        const Text(
                          "Ready to order from top restaurants ?",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 60,
                          ),
                          child: Commonbutton(
                            text: "SET DELIVERY LOCATION",
                            onTap: () {},
                            bgcolor: GlobalVarialbes.secondaryColor,
                            textColor: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                          child: RichText(
                            text: const TextSpan(
                              text: 'Have an account? ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "Sign in",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: GlobalVarialbes.secondaryColor,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200),
            width: double.infinity,
            height: 370,
            child: Swiper(
                autoplay: true,
                loop: true,
                index: currentIndex,
                onIndexChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                pagination: const SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.grey,
                      size: 15.0,
                      activeColor: GlobalVarialbes.secondaryColor,
                      activeSize: 15.0),
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 220,
                        width: 180,
                        child: Image.asset(
                          pageimage[index],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          contents[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: pageimage.length),
          )
        ],
      ),
    ));

    // Container(
    //   color: GlobalVarialbes.secondaryColor,
    //   child: Stack(
    //     children: [
    //       Align(
    //         alignment: Alignment.topLeft,
    //         child: Container(
    //           height: 90,
    //           width: 90,
    //           margin: const EdgeInsets.only(
    //             top: 50,
    //             left: 20,
    //           ),
    //           padding: const EdgeInsets.all(20),
    //           decoration: const BoxDecoration(
    //             shape: BoxShape.circle,
    //             color: Colors.white,
    //           ),
    //           child: Image.asset("assets/res/logo.png"),
    //         ),
    //       ),
    //       Align(
    //         alignment: Alignment.bottomCenter,
    //         child: CustomPaint(
    //           painter: CurvePainter(),
    //           child: Container(
    //             alignment: Alignment.bottomCenter,
    //             width: MediaQuery.of(context).size.width,
    //             height: MediaQuery.of(context).size.height,
    //           ),
    //         ),
    //         // Container(
    //         //   height: 350,
    //         //   width: double.infinity,
    //         //   decoration: const BoxDecoration(
    //         //     color: Colors.white,
    //         //     borderRadius: BorderRadius.only(
    //         //         topRight: Radius.circular(150),
    //         //         topLeft: Radius.circular(150)),
    //         //   ),
    //         // ),
    //       )
    //     ],
    //   ),
    // );
  }
}
