import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs.weather/bloc/weather_bloc.dart';

class SonGuncellemeWidget extends StatelessWidget {
  const SonGuncellemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _weatherbloc =
        BlocProvider.of<WeatherBloc>(context); //bloğu getirmeye yarar.
    return BlocBuilder(
      bloc: _weatherbloc,
      builder: (context, WeatherState state) {
        return Text(
          "Son Güncelleme ${_saatOlustur(state)}",
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        );
      },
    );
  }

  String _saatOlustur(WeatherState state) {
    (state
        as WeatherLoadedState); //state açma yöntemi :) öbür türlü statedeki değerlere erişemiyorduk.

    return formatDate(
        DateTime.parse(state.weather.location!.localtime), [HH, ':', nn]);
  }
}
