import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/controllers/data.dart';

class Repo {
  getWeather() async {
    var url =
        "https://api.openweathermap.org/data/2.5/weather?q=karachi&appid=f5783e1fee68d6228723ecc46804ee40&units=metric";
    final res = await http.get(Uri.parse(url));
    var resbody = res.body;

    try {
      if (res.statusCode == 200) {
        print("weather available");
        return DataModel.fromJson(json.decode(resbody));
      }
    } catch (e) {
      print('type city correct');
      throw Exception();
    }
  }
}
