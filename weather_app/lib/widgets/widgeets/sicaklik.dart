import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs.weather/bloc/weather_bloc.dart';

class SicaklikWidget extends StatelessWidget {
  const SicaklikWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        state as WeatherLoadedState;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${state.weather.location?.tzId.toString()}",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "${state.weather.location?.country.toString()}",
              style: TextStyle(fontSize: 17),
            ),
          ],
        );
      },
    );
  }
}
