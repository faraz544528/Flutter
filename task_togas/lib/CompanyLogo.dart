import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_togas/Colors.dart';

class Companylogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceH = MediaQuery.sizeOf(context).height;
    double deviceW = MediaQuery.sizeOf(context).width;

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.dragon,
            size: 50,
            color: myDarkgreen,
          ),
          SizedBox(
            width: deviceW * 0.05,
          ),
          Text(
            "Tasktugas",
            style: TextStyle(
                fontSize: 50, color: myDarkgreen, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
