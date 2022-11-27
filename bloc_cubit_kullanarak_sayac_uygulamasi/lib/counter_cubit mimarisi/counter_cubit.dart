// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(const CounterInitial(baslangicDegeri: 20));

  void arttir() {
    emit(MyCounterState(sayacDegeri: state.sayac + 1));
    //varolan state'i günceller ve yayın yapar. yeni bir nesne oluşturup gönderdik state.sayac ile o anki sayaç değerini oku ve 1 arttır
  }

  void azalt() {
    emit(MyCounterState(sayacDegeri: state.sayac - 1));
  }
}
