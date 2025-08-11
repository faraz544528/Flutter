import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Map<String, dynamic>? result;

class QuestionApi {
  //https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key} --->> current weather
  //https://api.openweathermap.org/data/2.5/weather?q={city name}&lat={lat}&lon={lon}&appid=0e6851ab12e19bebdb6660a18e978f84 ------> city weather

  fetchApi(String? lat, String? lon, String? city) async {
    var url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=$city&lat=$lat&lon=$lon&appid=0e6851ab12e19bebdb6660a18e978f84",
    );
    var data = await http.get(url);
    debugPrint(
      "--------------------------------->>>Hitting url $url--------------\n\n",
    );
    var decodedData = jsonDecode(data.body);
    // debugPrint(
    //   "--------------------------------->>>Hitting Api----------------------------\n\n $decodedData",
    // );

    return result = decodedData;
  }
}

// https://api.openweathermap.org/data/2.5/weather?lat=-122.084&lon=37.421998333333335&appid=0e6851ab12e19bebdb6660a18e978f84
