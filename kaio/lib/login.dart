import 'package:flutter/material.dart';
import 'package:kaio/homeScreen.dart';
import 'package:kaio/loginErr.dart';

TextEditingController mail = TextEditingController();
TextEditingController pass = TextEditingController();

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
              Card(
                elevation: 5,
                shadowColor: Colors.blue,
                child: TextField(
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
              ),
              SizedBox(height: 60),
              TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: const Color.fromARGB(255, 52, 53, 57),
                  prefixIcon: Icon(
                    Icons.lock_outlined,
                    color: Colors.white,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: const Color.fromARGB(255, 104, 103, 103),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 7, 110, 194)),
                  ),
                ),
                controller: pass,
              ),
              SizedBox(height: 40),
              MaterialButton(
                  height: 55,
                  minWidth: 400,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  onPressed: () {
                    NetworkImage("${mail.text}");

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: (Colors.white), fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 30),
              Row(children: [
                Container(
                  height: 1,
                  width: 140,
                  color: const Color.fromARGB(255, 107, 106, 106),
                ),
                Text(
                  "    OR    ",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                Container(
                  height: 1,
                  width: 145,
                  color: const Color.fromARGB(255, 107, 106, 106),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: const Color.fromARGB(255, 140, 139, 139),
                        size: 40,
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Icon(
                        Icons.g_mobiledata,
                        color: const Color.fromARGB(255, 140, 139, 139),
                        size: 60,
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: const Color.fromARGB(255, 140, 139, 139),
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign Up?",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
