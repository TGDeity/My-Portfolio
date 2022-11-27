import 'package:flutter/material.dart';

//!Arayüzümüzdeki gördüğümüz değer veri güncelleme olduğunda rebuild ekrana çizme işleminin yapılacağı yerdir state.

@immutable
abstract class BlocCounterState {
  final double sayac;
  const BlocCounterState({required this.sayac});
}

class CounterInitial extends BlocCounterState {
  const CounterInitial({required double baslangicDegeri})
      : super(sayac: baslangicDegeri);
  //üst sınıfa başlangic değeri verip onu mutlu ediyoruz
}
//!bu sayaç değeri ekrana ilk hangi değerle başlayacak? yani bu sınıfı kullanmak zorunda değiliz

class MyCounterState extends BlocCounterState {
  const MyCounterState({required double sayacDegeri})
      : super(sayac: sayacDegeri);
}
