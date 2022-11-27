// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_api_service.dart';
import 'package:weather_app/service_locator/get_it_locator.dart';

import '../models/weather.dart';

class WeatherRepository {
  //! hava durumu getirilecek datadan

  WeatherApiClient weatherApiClient = getItLocatorr<WeatherApiClient>();
  //sen reporisetryde weatherapicliente ihtiyaç duyoyrsan git getir.

  Future<WeatherModel> getWeather({required sehir}) async {
    debugPrint("REPOSITRY getWeather Calıstı şehir ismi: " + sehir);
    debugPrint("REPOSITRY getWeather Calıstı şehir ismi: " +
        await WeatherApiClient.getLocationName(sehir).toString());
    return await WeatherApiClient.getLocationName(sehir);
  }
}
