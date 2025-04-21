import 'package:flutter/material.dart';
import 'package:task_togas/Colors.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/myLoginsAndSignup.dart';

bool isChecked = false;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Myloginsandsignup(
                isLogin: false,
              ),
              MyInputField(
                firstIcon: Icons.person_outline_rounded,
                hintext: "Your Name",
              ),
              SizedBox(height: deviceH * 0.03),
              MyInputField(
                hintext: "Enter your Email",
              ),
              SizedBox(height: deviceH * 0.03),
              MyInputField(
                hintext: "Enter Your Password",
                isEmail: false,
              ),
              SizedBox(height: deviceH * 0.03),
              MyInputField(
                hintext: "Confirm Your Password",
                isEmail: false,
              ),
              SizedBox(height: deviceH * 0.04),
              Row(children: [
                Icon(Icons.check_circle_rounded, color: iconClr),
                Text("   At least 8 characters",
                    style: TextStyle(color: iconClr))
              ]),
              SizedBox(height: deviceH * 0.01),
              Row(children: [
                Icon(Icons.check_circle_rounded, color: iconClr),
                Text("   At least 1 number", style: TextStyle(color: iconClr))
              ]),
              SizedBox(height: deviceH * 0.01),
              Row(children: [
                Icon(Icons.check_circle_rounded, color: iconClr),
                Text("   Both upper and lower case letters",
                    style: TextStyle(color: iconClr))
              ]),
              SizedBox(height: deviceH * 0.1),
              Row(children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ??
                          false; // will change the value to true when clicked on checkbox
                    });
                  },
                ),
                Text(
                    "By Agreeing to the Terms and conditions, you are entering\n                             in the Tasktugas")
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
