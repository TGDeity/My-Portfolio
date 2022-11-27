part of 'counter_cubit.dart';

//!Arayüzümüzdeki gördüğümüz değer veri güncelleme olduğunda rebuild ekrana çizme işleminin yapılacağı yerdir state.
@immutable
abstract class CounterCubitState {
  final int sayac;
  const CounterCubitState({required this.sayac});
}

class CounterInitial extends CounterCubitState {
  const CounterInitial({required int baslangicDegeri})
      : super(sayac: baslangicDegeri);
  //üst sınıfa başlangic değeri verip onu mutlu ediyoruz
}
//!bu sayaç değeri ekrana ilk hangi değerle başlayacak? yani bu sınıfı kullanmak zorunda değiliz

class MyCounterState extends CounterCubitState {
  const MyCounterState({required int sayacDegeri}) : super(sayac: sayacDegeri);


}
