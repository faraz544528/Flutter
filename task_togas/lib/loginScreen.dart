import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/ForgetPass.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/TextAndTitle.dart';
import 'package:task_togas/myLoginsAndSignup.dart';
import 'package:task_togas/myMaterialButton.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Myloginsandsignup(),
                Mymaterialbutton(
                  icon: Icons.apple_outlined,
                  onPressed: () {},
                  text: " Login With Apple",
                  borderClr: textClr,
                ),
                SizedBox(height: deviceH * 0.02),
                Mymaterialbutton(
                  icon: FontAwesomeIcons.google,
                  onPressed: () {},
                  text: " Login With Google",
                  borderClr: textClr,
                ),
                SizedBox(height: deviceH * 0.04),
                Text(
                  "or with continue with email",
                  style: TextStyle(color: iconClr),
                ),
                SizedBox(height: deviceH * 0.04),
                MyInputField(
                  isEmail: true,
                  hintext: "Enter Your email",
                ),
                SizedBox(height: deviceH * 0.02),
                MyInputField(
                  isEmail: false,
                  isOTP: false,
                  hintext: "Enter your Password",
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Forgetpass()));
                      },
                      child: Text("Forgot Password?",
                          style: TextStyle(color: myDarkgreen)),
                    )
                  ],
                ),
                SizedBox(height: deviceH * 0.15),
                Mymaterialbutton(
                  onPressed: () {},
                  text: "Login",
                  color: myLightGreen,
                ),
                SizedBox(height: deviceH * 0.01),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By Signing up, you agree to our    ",
                      style: TextStyle(color: iconClr),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Terms of services",
                          style: TextStyle(
                              color: myDarkgreen,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("and    ", style: TextStyle(color: iconClr)),
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Privacy policy",
                          style: TextStyle(
                              color: myDarkgreen,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
