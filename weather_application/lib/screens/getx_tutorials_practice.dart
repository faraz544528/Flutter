import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Getx extends StatelessWidget {
  const Getx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: () {}, child: Text("SNACK BAR")),
          ],
        ),
      ),
    );
  }
}
