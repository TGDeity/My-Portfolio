import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs.weather/bloc/weather_bloc.dart';

class HavaDurumuResimWidget extends StatelessWidget {
  const HavaDurumuResimWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherBloc _weatherBloc = BlocProvider.of<WeatherBloc>(context);

    return BlocBuilder(
      bloc: _weatherBloc,
      builder: ((context, state) {
        state as WeatherLoadedState;
        return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
            _iconAddressBul(state),
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          Text(
            "${state.weather.current!.tempC} °C",
            style: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
          ),
        ]);
      }),
    );
  }

  String _iconAddressBul(WeatherState state) {
    state as WeatherLoadedState;
    String a = (state.weather.current?.condition!.icon)
        .toString()
        .replaceAll('//', 'https://');
    return a;
  }
}
