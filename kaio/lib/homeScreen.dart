import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaio/forhotPass.dart';
import 'package:kaio/login.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var img1 = AssetImage("assets/exploreo.jpg");
  var imgForw = AssetImage("assets/project.jpg");
  var imgback = AssetImage("assets/exploreo.jpg");
  var fit = BoxFit.fitHeight;
  var fill = BoxFit.fill;
  var none = BoxFit.none;
  var fitw = BoxFit.fitWidth;
  var cover = BoxFit.cover;

  Color borderclr = Colors.red;
  Color containerclr = Colors.red;
  Color containerclr1 = Colors.blueGrey;
  Color containerclr2 = Colors.purple;
  Color containerclr3 = Colors.blue;
  Color containerclr4 = Colors.green;
  Color containerclr5 = Colors.blue.shade200;
  Color containerclr6 = Colors.black;
  Color containerclr7 = Colors.orange;
  Color containerclr8 = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr1,
                    ),
                    onTap: () {
                      setState(() {
                        containerclr = containerclr1;
                      });
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containerclr = containerclr2;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containerclr = containerclr3;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containerclr = containerclr4;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        borderclr = containerclr5;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        borderclr = containerclr6;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr6,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        borderclr = containerclr7;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr7,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        borderclr = containerclr8;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr8,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      img1 = imgback;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_sharp,
                    size: 80,
                  )),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: containerclr,
                    border: Border.all(color: borderclr, width: 10)),
                child: Image(
                  image: img1,
                  fit: cover,
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      img1 = imgForw;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_circle_right,
                    size: 80,
                  ))
            ]),
            SizedBox(height: 60),
            /////////////////////////////
            //image Container//
            Container(
              height: 80,
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr1,
                    ),
                    onTap: () {
                      setState(() {
                        containerclr = containerclr1;
                      });
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containerclr = containerclr2;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containerclr = containerclr3;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: containerclr3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        containerclr = containerclr4;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          img1 = imgForw;
                        });
                      },
                      child: CircleAvatar(
                        radius: 20,
                        child: Image(image: imgForw),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "FitHeight",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        none = fit;
                      });
                    },
                    child: Text(
                      "FitWidth",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        cover = fitw;
                      });
                    },
                    child: Text(
                      "Fill",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        cover = none;
                      });
                    },
                    child: Text(
                      "none",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
