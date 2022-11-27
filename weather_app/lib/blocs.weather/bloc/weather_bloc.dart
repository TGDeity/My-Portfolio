// ignore_for_file: depend_on_referenced_packages

import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/data/weather_repository.dart';
import 'package:weather_app/models/weather.dart';

import 'package:bloc/bloc.dart';

import '../../service_locator/get_it_locator.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  //final WeatherRepository weatherRepository = WeatherRepository(); //getIt kullanmak hız sağlar.
  //final WeatherRepository weatherRepository = getItLocatorr.get<WeatherRepository>();
  final WeatherRepository weatherRepository =
      getItLocatorr<WeatherRepository>();

  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) async {
      if (event is HavaDurumunuGetirEvent) {
        try {
/*           //hava durumu getirme kodları
          WeatherRepository weatherRepository = WeatherRepository();
          weatherRepository.getWeather(sehir:event.sehirAdi); */ //! sınıf içerisinde sınıf bağımlılıkları oluşturmak çokta doğru bir yöntem değil bunun yerine get it kütüphanesini kullanarak lazım olduğu yerlerde sınıfımızı yada nesnemizi çağırabiliriz bana 100 tanede WeatherRepository sınıfını oluşturma isteği gelse bile hep aynı referansı alacak böylelikle  hep aynı sınıfa gidecek 1 tane sınıf üretilmiş olacak
          emit(WeatherLoadingState());

          final WeatherModel getirilenWeather =
              await weatherRepository.getWeather(sehir: event.sehirAdi);

          emit(WeatherLoadedState(weather: getirilenWeather));
        } catch (_) {
          emit(WeatherErrorState());
        }
      } else if (event is RefreshPage) {
        try {
          final WeatherModel getirilenWeather =
              await weatherRepository.getWeather(sehir: event.sehirAdi);

          emit(WeatherLoadedState(weather: getirilenWeather));
        } catch (_) {
          emit(super.state);
        }
      }
    });
  }
}
