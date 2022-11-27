// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, BlocCounterState> {
  //Bloğa eventler(CounterEvent) girer Stateler(CounterState) çıkar
  CounterBloc() : super(const CounterInitial(baslangicDegeri: 60)) {
    on<ArttirCounterEvent>((event, emit) {
      //!Counter event olayında şunu emite et demek.
      emit(MyCounterState(sayacDegeri: state.sayac + 2.3));
      debugPrint(event.toString());
    });

    on<AzaltCounterEvent>((event, emit) {
      //!Counter event olayında şunu emite et demek.
      emit(MyCounterState(sayacDegeri: state.sayac - 1.6));
    });
  }
}
