import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:testerr/testerr.dart';

class Homescreen3 extends StatefulWidget {
  @override
  State<Homescreen3> createState() => _Homescreen3State();
}

class _Homescreen3State extends State<Homescreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
              items: [
                Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1740166260052-b41e5381bcbb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                Image(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1741540420894-46bc55554fc3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                Image(
                    image: NetworkImage(
                        "https://plus.unsplash.com/premium_photo-1676139292729-0976e4162a17?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.vertical))
        ],
      ),
    );
  }
}
