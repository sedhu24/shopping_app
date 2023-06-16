import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:shopping_app/constants/globalvariables.dart';

class IntroThreePage extends StatefulWidget {
  const IntroThreePage({super.key});

  @override
  State<IntroThreePage> createState() => _IntroThreePageState();
}

class _IntroThreePageState extends State<IntroThreePage> {
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
    return Scaffold(
      body: Column(
        children: [
          Swiper(
              loop: false,
              autoplay: true,
              index: currentIndex,
              onIndexChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              pagination: const SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      activeColor: GlobalVarialbes.secondaryColor,
                      activeSize: 20.0)),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        pageimage[index],
                      ),
                    ),
                  ],
                );
              },
              itemCount: pageimage.length)
        ],
      ),
    );
  }
}
