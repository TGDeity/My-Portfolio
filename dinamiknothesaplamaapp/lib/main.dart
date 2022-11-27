import 'package:dinamiknothesaplamaapp/sabitler(constant).dart';
import 'package:flutter/material.dart';

import 'ortalama_hesapla_app_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Özellikle renkler textler marginler textStylelar sabitse bunları bir çatı altında toplamalıyız
      title: Sabitler.baslikText,
      //debug yazısını kaldırık.
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          primarySwatch: Sabitler.anaRenk,
          visualDensity: VisualDensity
              .adaptivePlatformDensity), //diğer platformlarada adeptiv olması için açıyoruz.
      home: const OrtalamaHesaplaPage(),
    );
  }
}
