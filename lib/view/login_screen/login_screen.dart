// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_cloneapp/const_image/colors_constants.dart';
import 'package:instagram_cloneapp/const_image/image_constants.dart';
import 'package:instagram_cloneapp/global_widgets/custom_button.dart';
import 'package:instagram_cloneapp/view/bottom_navigationbar_screen/bottom_navigationbar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // #1 instgram text logo
                Image.asset(ImageConstants.textIcon),
                SizedBox(height: 50),
                // #2 user name text field

                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: ColorConstants.lightGrey,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.1))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.4))),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(height: 15),
                // #3 password text field

                TextFormField(
                  controller: passController,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: ColorConstants.lightGrey,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.1))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(.4))),
                  ),
                  onChanged: (value) {
                    print(value);
                    setState(() {});
                  },
                ),
                SizedBox(height: 8),
                // #4 forgot password text button

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.primaryBlue),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                // #5 Login  button

                CustomButton(
                  buttonColor: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorConstants.primaryBlue
                      : ColorConstants.primaryBlue.withOpacity(.4),
                  text: "Log in",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationBarScreen()),
                        (route) => false);
                  },
                ),
                SizedBox(height: 30),
                // #6 Login with facebook  button

                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: ColorConstants.primaryBlue,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Login with facebook",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.primaryBlue),
                      ),
                    ],
                  ),
                ),

                // #7 or section
                SizedBox(height: 30),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    endIndent: 30,
                  )),
                  Text("OR"),
                  Expanded(
                      child: Divider(
                    indent: 30,
                  )),
                ]),
                SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Dont have an account? ",
                      style: TextStyle(
                          color: ColorConstants.primaryBlack.withOpacity(.4)),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              color: ColorConstants.primaryBlue,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
        child: Text(
          "Instagram or Facebook",
          textAlign: TextAlign.center,
          style: TextStyle(color: ColorConstants.primaryBlack.withOpacity(.4)),
        ),
      ),
    );
  }
}
