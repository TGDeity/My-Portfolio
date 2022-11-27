import 'dart:async';

import 'package:flutter/material.dart';

class SayacViewModel {
  int _sayac = 50;
  final StreamController<int> _controller = StreamController.broadcast(
      onListen: () => debugPrint('ben dinleniyorum'),
      onCancel: () => debugPrint('dinleme bitti cancel'));
  Stream<int> get sayacStream => _controller.stream;
  Sink get _sink => _controller.sink;

  int initalizeEt() {
    return _sayac;
  }
  //broadcast StreamControllerde direkt veriyi initialize etmiyor yani buildden önce veriyi alıp yayın yapmaya başlıyor build methodu tetiklendiği anda sayaştaki int değeri göremediği için değer yok hatası alıyoruz bu yüzden  StreamBuilder içine initialData kısmında gösterebiliriz.

  SayacViewModel() {
    _sink.add(_sayac);
  }
  void azalt() {
    _sink.add(--_sayac);
  }

  void arttir() {
    _sink.add(++_sayac);
  }

  cancel() {
    _controller.close();
  }

  pause() {}
}
