import 'package:get_it/get_it.dart';
import 'package:weather_app/data/weather_repository.dart';
import 'package:weather_app/models/weather_api_service.dart';

GetIt getItLocatorr = GetIt.instance;

void setupLocator() {
  getItLocatorr.registerLazySingleton(() =>
      WeatherRepository()); //!senden istekte bulunduğum zaman geriye WeatherRepository döndür.  bana 100 tanede WeatherRepository sınıfını oluşturma isteği gelse bile hep aynı referansı alacak böylelikle  hep aynı sınıfa gidecek 1 tane sınıf üretilmiş olacak

  getItLocatorr.registerLazySingleton(() => WeatherApiClient());
}
