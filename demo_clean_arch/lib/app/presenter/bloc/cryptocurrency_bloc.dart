import 'package:demo_clean_arch/app/presenter/bloc/events/cryptocurrency_events.dart';
import 'package:demo_clean_arch/app/presenter/bloc/states/cryptocurrency_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCurrencyBloc extends Bloc<BaseCryptoCurrencyEvent, BaseCryptoCurrencyState> {
  CryptoCurrencyBloc() : super(const BaseCryptoCurrencyIdleState()) {
    on<BaseCryptoCurrencyEvent>((event, emit) async => await handleEvents(event, emit));
  }

  Future<void> handleEvents(BaseCryptoCurrencyEvent event, Emitter<BaseCryptoCurrencyState> emit) async {
    if (event is LoadCurrentBitcoinPriceEvent) {
      await _handleLoadCurrentBitcoinPriceEvent(event, emit);
    }
    return Future.value();
  }

  Future<void> _handleLoadCurrentBitcoinPriceEvent(
      LoadCurrentBitcoinPriceEvent event, Emitter<BaseCryptoCurrencyState> emit) async {
    emit(const CurrentBitcoinPriceLoadingState());

    try {} catch (e) {
      debugPrint(e.toString());
    }
  }

}
