import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/blocs.weather/bloc/weather_bloc.dart';
import 'widgeets/arama_button.dart';
import 'widgeets/hava_durumu_resim.dart';
import 'widgeets/location.dart';
import 'widgeets/sicaklik.dart';
import 'widgeets/son_guncelleme.dart';

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);
    String? kullanicininSectigiSehir = '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Weather App'),
        elevation: 0,
        backgroundColor: Colors.black12,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              kullanicininSectigiSehir = await Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => SehirSecWidget())));
              debugPrint("seçilen şehir : $kullanicininSectigiSehir ");

              if (kullanicininSectigiSehir != null) {
                weatherBloc.add(HavaDurumunuGetirEvent(
                    sehirAdi: kullanicininSectigiSehir!));
              }
            },
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, WeatherState state) {
            debugPrint(state.toString());
            if (state is WeatherInitial) {
              return const Center(
                child: Text("Şehir Seçinizz lan"),
              );
            }

            if (state is WeatherLoadingState) {
              const Center(child: CircularProgressIndicator());
            }

            if (state is WeatherLoadedState) {
              final getirilenWeather = state.weather;
              return RefreshIndicator(
                onRefresh: () async => weatherBloc
                    .add(RefreshPage(sehirAdi: kullanicininSectigiSehir!)),
                child: ListView(
                  children: [
                    //Lokasyon Widget
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: LocationWidget(
                              secilensehir: getirilenWeather.location!.name)),
                    ),
                    //SonGuncelleme Widget
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: SonGuncellemeWidget()),
                    ),
                    //HavaDurumu Logo Widget
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: HavaDurumuResimWidget()),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: SicaklikWidget()),
                    )
                  ],
                ),
              );
            }

            if (state is WeatherErrorState) {
              return const Center(
                child: Text('Böyle Bir Şehir yok!'),
              );
            }
            return const Text('Your internet connection bad.');
          },
        ),
      ),
    );
  }
}
