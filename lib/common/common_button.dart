import 'package:flutter/material.dart';

class Commonbutton extends StatelessWidget {
  final String text;
  final Color? bgcolor;
  final Color? textColor;
  final VoidCallback onTap;

  const Commonbutton({
    super.key,
    required this.text,
    this.bgcolor,
    this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
