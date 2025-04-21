import 'package:flutter/material.dart';
import 'package:kaio/homeScreen.dart';
import 'package:kaio/login.dart';

class Forgotpass extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    print('=============> On Forgot Screen');
    return Scaffold(
      appBar: AppBar(
        title: Text('FORGOT'),
        actions: [],
      ),
      drawer: Drawer(),
      backgroundColor: const Color.fromARGB(255, 3, 24, 42),
      body: Stack(
        children: [
          Positioned(
            bottom: 900,
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Transform.rotate(
                angle: 6,
                child: Opacity(
                  opacity: 0.6,
                  child: Icon(
                    Icons.lock,
                    size: 300,
                    color: const Color.fromARGB(255, 66, 68, 70),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 52, 53, 57),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Icon(
                      Icons.chevron_left_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Then let's submit password reset.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 62, 65),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 82, 88),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.mail,
                            color: const Color.fromARGB(255, 214, 206, 206),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send via Email",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 0.9),
                          Text(
                            "Reset password via Email",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 90),
                      Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 62, 65),
                      border: Border.all(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 54, 88, 190),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send via 2FA",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 0.9),
                          Text(
                            "Reset password via 2FA",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100),
                      Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 62, 65),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 82, 88),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.mail,
                            color: const Color.fromARGB(255, 214, 206, 206),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send via Google Auth",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 0.9),
                          Text(
                            "Reset Password via G-Auth",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 80),
                      Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 60, 62, 65),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 82, 88),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.mail,
                            color: const Color.fromARGB(255, 214, 206, 206),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send via SMS",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 0.9),
                          Text(
                            "Reset password via SMS",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100),
                      Icon(
                        Icons.chevron_right_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.blue,
                  height: 50,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Reset Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.restore,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
