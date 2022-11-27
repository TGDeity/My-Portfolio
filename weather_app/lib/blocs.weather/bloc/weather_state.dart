part of 'weather_bloc.dart';

//!bana hava durumunu  getir gibi bir eventte bulunuldu bu dışarıya nasıl bir bilgi verecek?

//!gelen hava durumuna göre ne gibi bir değişiklikler olacak UI'da onun fonksiyonlarını yapmalıyız mesela hava durumu getiriliyorken progress bar göstermek veya ava durumu getirildi gibi şeyler yazmak.
@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

//!hava durumu yükleniyor
class WeatherLoadingState extends WeatherState {}

//!hava durumu getirildi.
class WeatherLoadedState extends WeatherState {
  final WeatherModel weather;

  WeatherLoadedState({required this.weather});
}

//!Hata durumu çıkarsa
class WeatherErrorState extends WeatherState {}
