import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stream_controller_ile_sayac/sayac_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final SayacViewModel sayacViewModel = SayacViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          initialData: sayacViewModel.initalizeEt(),
          stream: sayacViewModel.sayacStream,
          builder: (context, snapshot) => Text(
              snapshot.hasData ? snapshot.data.toString() : "veri bulunamadı"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<int>(
                initialData: sayacViewModel.initalizeEt(),
                stream: sayacViewModel.sayacStream,
                //sayacViewModel'in içindeki değeri sen sürekli olarak takip et olaki değişiklik olursa hemen yakala.
                builder: (context, snapshot) => Text(snapshot.hasData
                    ? snapshot.data.toString()
                    : 'Daha değer geçilmedi')),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              sayacViewModel.arttir();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 5),
          FloatingActionButton(
            onPressed: () {
              sayacViewModel.azalt();
              //sayacViewModel.cancel();
              sayacViewModel.pause();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
