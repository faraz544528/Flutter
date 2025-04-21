import 'package:flutter/material.dart';


  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 205, 205),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: device.height,
            width: device.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.green,
              const Color.fromARGB(255, 172, 162, 71)
            ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/exploreo.jpg"),
                  ),
                  Text(
                    "                 The Exploreo Travels\n     Don't Leave Home Without The Exploreo Travels",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: device.width * 0.55,
                  ),
                  Text(
                    "Home Page",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: device.width * 0.02,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        size: 25,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          width: device.width * 0.2,
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 31, 100, 34),
                Colors.yellow
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 280),
                    child: Builder(builder: (context) {
                      return IconButton(
                          onPressed: () {
                            Scaffold.of(context).closeDrawer();
                          },
                          icon:
                              Icon(Icons.arrow_back_ios, color: Colors.white));
                    }),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green.shade100,
                    radius: 45,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                      child: Icon(
                        Icons.person_2_rounded,
                        color: Colors.grey.shade100,
                        size: 80,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: device.height * 0.05,
                  ),
                  Text(
                    "Welcome RB USER",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("( BOARD-RB )", style: TextStyle(color: Colors.white)),
                  SizedBox(height: device.height * 0.02),
                  MaterialButton(
                    height: device.height * 0.08,
                    minWidth: device.width * 0.2,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    child: Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: device.height * 0.05),
                  MaterialButton(
                    height: device.height * 0.08,
                    minWidth: device.width * 0.2,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    child: Text(
                      "CMM Dashboard",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: device.height * 0.05),
                  MaterialButton(
                    height: device.height * 0.08,
                    minWidth: device.width * 0.2,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    child: Text(
                      "VB Dashboard",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: device.height * 0.05),
                  MaterialButton(
                    height: device.height * 0.08,
                    minWidth: device.width * 0.2,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: const Color.fromARGB(255, 161, 82, 82),
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Builder(builder: (context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu));
                })),
            SizedBox(
              height: device.height * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: device.height * 0.45,
                  width: device.width * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 135, 151, 163)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: device.width * 0.1,
                        child: MaterialButton(
                          color: const Color.fromARGB(255, 176, 196, 212),
                          onPressed: () {},
                          height: device.height * 0.26,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Icon(
                            Icons.memory_rounded,
                            color: const Color.fromARGB(255, 94, 149, 190),
                            size: 50,
                          )),
                        ),
                      ),
                      Text("    CMM\nDashboard")
                    ],
                  ),
                ),
                Container(
                  height: device.height * 0.45,
                  width: device.width * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 135, 151, 163)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: device.width * 0.1,
                        child: MaterialButton(
                          color: const Color.fromARGB(255, 176, 196, 212),
                          onPressed: () {},
                          height: device.height * 0.26,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Icon(
                            Icons.memory_rounded,
                            color: const Color.fromARGB(255, 94, 149, 190),
                            size: 50,
                          )),
                        ),
                      ),
                      Text("    CMM\nDashboard")
                    ],
                  ),
                ),
                Container(
                  height: device.height * 0.45,
                  width: device.width * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 135, 151, 163)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: device.width * 0.1,
                        child: MaterialButton(
                          color: const Color.fromARGB(255, 176, 196, 212),
                          onPressed: () {},
                          height: device.height * 0.26,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Icon(
                            Icons.memory_rounded,
                            color: const Color.fromARGB(255, 94, 149, 190),
                            size: 50,
                          )),
                        ),
                      ),
                      Text("    CMM\nDashboard")
                    ],
                  ),
                ),
                Container(
                  height: device.height * 0.45,
                  width: device.width * 0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 135, 151, 163)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: device.width * 0.1,
                        child: MaterialButton(
                          color: const Color.fromARGB(255, 176, 196, 212),
                          onPressed: () {},
                          height: device.height * 0.26,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Icon(
                            Icons.memory_rounded,
                            color: const Color.fromARGB(255, 94, 149, 190),
                            size: 50,
                          )),
                        ),
                      ),
                      Text("    CMM\nDashboard"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
