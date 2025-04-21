import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/CompanyLogo.dart';
import 'package:task_togas/TextAndTitle.dart';

class Myloginsandsignup extends StatelessWidget {
  Myloginsandsignup({this.isLogin = true});
  bool? isLogin;
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Companylogo(),
        SizedBox(
          height: deviceH * 0.03,
        ),
        Textandtitle(
            title: "Welcome To TaskTtugas",
            text:
                "Sign up or login bellow to manage your\n         project task and productivity"),
        SizedBox(height: deviceH * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: myDarkgreen),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Sign",
                  style: TextStyle(color: textClr),
                )),
          ],
        ),
        Row(
          mainAxisAlignment:
              isLogin! ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            Container(
              width: deviceW * .45,
              height: deviceH * .002,
              color: myDarkgreen,
            ),
          ],
        ),
        SizedBox(height: deviceH * 0.05)
      ],
    );
  }
}
