import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'weather.dart';

class WeatherApiClient {
  static Future<WeatherModel> getLocationName(String sehirAdi) async {
    var response = await http.get(
      Uri.parse(
          'http://api.weatherapi.com/v1/current.json?key=ac16a71d86ac40fda15160423222207&q=$sehirAdi&aqi=no'),
      //!buradaki key bölümüne kendi keyinizi girmelisiniz veya api kaynağını incelerseniz zaten ne anlatmak istediğini anlarsınız.
    );

    var parsedJson = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw Exception(
          "veri getirilemedi veya böyle bir şehir yok! yada internet bağlantısını kontrol et.");
    } else {
      return WeatherModel.fromJson(parsedJson);
    }
  }
}
