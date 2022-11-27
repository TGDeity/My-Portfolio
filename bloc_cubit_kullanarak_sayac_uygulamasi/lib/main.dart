//! Daha Basit Uygulamalarda Cubit Kullanabiliriz fakat daha gelişmiş uygulamalara geçtiğimiz zaman visual studio code'de bloc extensionunun yardımıyla birlikte yeni klasör oluştururken sağ tıklayıp new bloc demeliyiz cubitten farkı  bloc'larda Eventler vardır.
//! BLOC Yapısı bir değerin başka bir değere ihtiyaç duyduğu yerlerde kullanılır.

import 'package:bloc_cubit_kullanarak_sayac_uygulamasi/bloc_mimarisi_kullanarak_sayac_uygulamasi_yapma/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_mimarisi_kullanarak_sayac_uygulamasi_yapma/counter_state.dart';
import 'counter_cubit mimarisi/counter_cubit.dart';

//!Cubit
/* void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    debugPrint("BuildContext Tetiklendi");
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            /*  Text(
              context
                  .watch<CounterCubit>()
                  .state
                  .sayac
                  .toString(), //contexti izle ben bunun içindeki CounterCubit sınıfı ile ilgileniyorum gir oradan state ile erişip sayaç değerini bana getir.
              style: Theme.of(context).textTheme.headline4,
            ), */ //! bu yöntemde çekilen veri için her defasında buildi tetikliyor bu riverpoddada böyleydi bunun önüne geçebilmek adına aşağıdaki gibi kullanılabilir ctr+. ile blocBuilder'i çağırmalıyız
            BlocBuilder<CounterCubit, CounterState>(
              builder: (BuildContext context, CounterState state) {
                return Text(
                  state.sayac.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().arttir();
              //fonksiyonu çağırırken watch() demiyoruz read diyoruz contextin üzerinden CounterCubit sınıfına ulaş ve arttır sınıfını çalıştır.
            },
            tooltip: 'Increment', //!üstüne basılı tutunca gösterilen bilgi
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().azalt();
            },
            tooltip: 'Incrementa',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
} */

//!Bloc
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => CounterCubit())),
        //!başka blocları cubitleri MultiBlocProvider altında  enjekte edebiliriz.
        BlocProvider(create: ((context) => CounterBloc()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    debugPrint("BuildContext Tetiklendi");
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            /*  Text(
              context
                  .watch<CounterCubit>()
                  .state
                  .sayac
                  .toString(), //contexti izle ben bunun içindeki CounterCubit sınıfı ile ilgileniyorum gir oradan state ile erişip sayaç değerini bana getir.
              style: Theme.of(context).textTheme.headline4,
            ), */ //! bu yöntemde çekilen veri için her defasında buildi tetikliyor bu riverpoddada böyleydi bunun önüne geçebilmek adına aşağıdaki gibi kullanılabilir ctr+. ile blocBuilder'i çağırmalıyız
            BlocBuilder<CounterBloc, BlocCounterState>(
              builder: (BuildContext context, BlocCounterState state) {
                return Text(
                  state.sayac.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(ArttirCounterEvent());
              //fonksiyonu çağırırken watch() demiyoruz read diyoruz contextin üzerinden CounterCubit sınıfına ulaş ve arttır sınıfını çalıştır.
            },
            tooltip: 'Increment', //!üstüne basılı tutunca gösterilen bilgi
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(AzaltCounterEvent());
            },
            tooltip: 'Incrementa',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
