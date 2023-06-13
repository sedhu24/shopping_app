import 'package:flutter/material.dart';
import 'package:shopping_app/common/common_button.dart';
import 'package:shopping_app/common/custom_text_field.dart';
import 'package:shopping_app/constants/globalvariables.dart';

class CreateNewPassword extends StatefulWidget {
  static const String routeName = '/createnewpassword-screen';

  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15, left: 15),
            child: const Text(
              "Create New Password",
              style: TextStyle(
                fontSize: 20,
                color: GlobalVarialbes.secondaryTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            child: const Text(
              "Your new password must be different from previously used passwords",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          //  new Password
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "New Password",
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
              ],
            ),
          ),

          const SizedBox(height: 60),

          // confirm new Password
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "New Password",
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
              ],
            ),
          ),

          const SizedBox(
            height: 150,
          ),

          // update password button
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Commonbutton(
              text: "Update Password",
              onTap: () {},
              bgcolor: GlobalVarialbes.secondaryColor,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    ));
  }
}
