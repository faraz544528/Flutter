// ignore_for_file: deprecated_member_use
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_application/screens/data/api.dart';
import 'package:weather_application/screens/data/colors.dart';
import 'package:weather_application/wigdets/climate_details.dart';
import 'package:weather_application/wigdets/container.dart';
import 'package:weather_application/wigdets/hourly_update.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getCurrentLocation();
    cityName = false;
    super.initState();
  }

  bool cityName = false;
  var currentLong;
  var currentLat;

  getCurrentLocation() async {
    debugPrint("hit");
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      LocationPermission ask = await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      print("latitude= ${currentPosition.latitude}");
      print("longitude=${currentPosition.longitude}");
      currentLat = currentPosition.latitude.toString();
      currentLong = currentPosition.longitude.toString();
      print("------------------------api----------------------------$result\n");
    }

    var fetchedResult = await QuestionApi().fetchApi(
      currentLat,
      currentLong,
      controller.text,
    );

    setState(() {
      result = fetchedResult;
      controller.text = result!['name'];
    });
    if (controller.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Enter The City Name")));

      return;
    }

    print(
      "\n you current Loacation -------------------------------------------->${result!}------------------\n\n",
    );
  }

  images() {
    switch (result!['weather']?[0]['description'] ?? '--') {
      case 'overcast clouds':
        return Image.asset("assets/images/rainyCopy.png", fit: BoxFit.fill);

      case 'broken clouds':
        if (result!['main']?['temp'] < 275.0 ?? '--') {
          return Image.asset("assets/images/snowCopy.png", fit: BoxFit.fill);
        } else {
          return Image.asset("assets/images/thunderCopy.png", fit: BoxFit.fill);
        }

      case 'clear sky':
        return Image.asset("assets/images/sunnyCopy.png", fit: BoxFit.fill);

      case 'scattered clouds':
        return Image.asset("assets/images/sunnyCopy.png", fit: BoxFit.fill);

      default:
        return Image.asset("assets/images/sunnyCopy.png", fit: BoxFit.fill);
    }
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    if (result == null) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: bgrClr,
          body: Center(child: CircularProgressIndicator(color: white)),
        ),
      );
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgrClr,
        body: Column(
          children: [
            CustomContainer(
              hgt: true,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.03,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            CupertinoIcons.square_grid_2x2_fill,
                            size: screenSize.width * 0.05,
                            color: white,
                          ),
                          if (cityName)
                            SizedBox(
                              height: screenSize.height * 0.06,
                              width: screenSize.width * 0.45,
                              child: TextField(
                                controller: controller,

                                style: TextStyle(
                                  color: white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                cursorColor: white,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ).withOpacity(0.5),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      screenSize.width * 0.2,
                                    ),
                                    borderSide: BorderSide(
                                      width: screenSize.width * 0.3,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      screenSize.width * 0.2,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  hintText: "City Name",
                                  hintStyle: TextStyle(
                                    color: white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        cityName = false;

                                        result!['name'] = controller.text;

                                        getCurrentLocation();
                                      });
                                    },
                                    icon: Icon(
                                      CupertinoIcons.arrow_right,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          else
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  cityName = true;
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(CupertinoIcons.map_fill, color: white),
                                  SizedBox(width: screenSize.width * 0.02),

                                  Text(
                                    result!['name'] ?? 'Unknown City',
                                    // cityName
                                    //     ? controller.text
                                    //     : result!['name'] ?? "Unkown City",
                                    style: TextStyle(
                                      color: white,
                                      fontSize: screenSize.width * 0.07,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Icon(Icons.more_vert, color: white),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  Container(
                    height: screenSize.height * 0.5,
                    child: Stack(
                      children: [
                        Positioned(child: images()),

                        Positioned(
                          bottom: screenSize.height * 0.0,
                          left: screenSize.width * 0.0,
                          right: screenSize.width * 0.0,
                          child: Center(
                            child: Column(
                              children: [
                                GlowText(
                                  (((result!['main']?['temp'] ?? 275.0)
                                              as double) -
                                          275)
                                      .toStringAsFixed(0),

                                  // "",
                                  style: TextStyle(
                                    height: 0.1,
                                    fontSize: screenSize.width * 0.3,
                                    fontWeight: FontWeight.bold,
                                    color: white,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.05),
                                Text(
                                  (result!['weather']?[0]?['description'] ??
                                          "City Not Found")
                                      .toString(),
                                  style: TextStyle(
                                    color: white,
                                    fontSize: screenSize.width * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  DateFormat(
                                    "EEEE, d MMMM",
                                  ).format(DateTime.now()),
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.04,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenSize.height * 0.245,
                          left: screenSize.width * 0.59,
                          child: GlowText(
                            "°",
                            style: TextStyle(
                              fontSize: screenSize.height * 0.1,

                              color: white.withOpacity(0.3),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      ClimateDetails(
                        icon: CupertinoIcons.wind,
                        calculatedTemp:
                            "${result!['wind']?['speed'] ?? "--"} km/h",
                        condition: "Wind",
                      ),
                      ClimateDetails(
                        icon: CupertinoIcons.drop_fill,
                        calculatedTemp:
                            "${result!['main']?['humidity'] ?? '--'}%",
                        condition: "Humidity",
                      ),

                      ClimateDetails(
                        icon: CupertinoIcons.cloud_rain,
                        calculatedTemp: "${result!['clouds']?['all'] ?? '--'}%",
                        condition: "Chance of rain",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.03,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          color: white,
                          fontSize: screenSize.width * 0.07,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      MaterialButton(
                        minWidth: screenSize.width * 0.05,
                        onPressed: () {
                          setState(() {
                            getCurrentLocation();
                          });
                        },
                        child: Text("hit", style: TextStyle(color: white)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "7 Days ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: screenSize.width * 0.05,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // SizedBox(height: screenSize.height * 0.02),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      spacing: screenSize.width * 0.02,
                      children: [
                        HourlyUpdate(
                          temp: "23°",
                          img: "assets/images/sunny_2d.png",
                          time: "10:00",
                        ),
                        HourlyUpdate(
                          temp: "18°",
                          img: "assets/images/rainy_2d.png",
                          time: "11:00",
                        ),
                        HourlyUpdate(
                          temp: "25°",
                          img: "assets/images/sunny_2d.png",
                          time: "12:00",
                        ),
                        HourlyUpdate(
                          temp: "20°",
                          img: "assets/images/rainy_2d.png",
                          time: "1:00",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
