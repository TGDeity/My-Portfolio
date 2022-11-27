// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class HavaDurumunuGetirEvent extends WeatherEvent {
  final String? sehirAdi;

  HavaDurumunuGetirEvent({required String this.sehirAdi});
}

class RefreshPage extends WeatherEvent {
  final String sehirAdi;

  RefreshPage({required this.sehirAdi});
}
