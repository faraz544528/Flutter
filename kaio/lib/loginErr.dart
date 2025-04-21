import 'package:flutter/material.dart';
import 'package:kaio/forhotPass.dart';
import 'package:kaio/login.dart';

class LoginScreenErr extends StatelessWidget {
  TextEditingController mail = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController passCom = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 24, 42),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Sign In To Asklepios",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
              SizedBox(height: 30),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 52, 53, 57),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 7, 110, 194)))),
                controller: mail,
              ),
              SizedBox(height: 60),
              TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 52, 53, 57),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: const Color.fromARGB(81, 255, 255, 255),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 7, 110, 194)))),
                controller: pass,
              ),
              SizedBox(height: 60),
              TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: const Color.fromARGB(81, 255, 255, 255),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 52, 53, 57),
                    labelText: "Password Confirmation",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.5,
                            color: const Color.fromARGB(255, 147, 22, 22)),
                        borderRadius: BorderRadius.circular(10))),
                controller: passCom,
              ),
              SizedBox(height: 90),
              MaterialButton(
                height: 55,
                minWidth: 400,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onPressed: () {
                  mail.text;
                  pass.text;
                  print('=======>${passCom.text},${pass.text}');

                  if (passCom.text != pass.text) {
                    print(
                        '===========================........................................................>>>>');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Forgotpass()));
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
                },
                child: Text(
                  "Sign Up -->",
                  style: TextStyle(
                      color: (Colors.white),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    minWidth: 0.0,
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
