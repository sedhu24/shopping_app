import 'package:flutter/material.dart';
import 'package:shopping_app/constants/globalvariables.dart';

class GettingStarted extends StatefulWidget {
  static const String routeName = '/gettingstarted-screen';
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalVarialbes.secondaryColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 90,
              width: 90,
              margin: const EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset("assets/res/logo.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              width: 700,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    topLeft: Radius.circular(100)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
