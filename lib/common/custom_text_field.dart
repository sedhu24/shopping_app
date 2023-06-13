import 'package:flutter/material.dart';
import 'package:shopping_app/constants/globalvariables.dart';

class CustomTextField extends StatelessWidget {
  final String hinttext;
  final IconButton? sufixIcon;
  final bool obsecureText;

  const CustomTextField({
    super.key,
    required this.hinttext,
    this.sufixIcon,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: "*",
      obscureText: obsecureText,
      cursorColor: GlobalVarialbes.secondaryColor,
      decoration: InputDecoration(
        suffixIcon: sufixIcon,
        filled: true,
        hintText: hinttext,
        hintStyle: const TextStyle(color: GlobalVarialbes.textfieldcolors),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: GlobalVarialbes.secondaryColor)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: GlobalVarialbes.secondaryColor)),
        fillColor: Colors.white,
      ),
    );
  }
}
