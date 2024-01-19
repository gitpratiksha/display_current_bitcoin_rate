import 'package:equatable/equatable.dart';

class BaseCryptoCurrencyEvent extends Equatable {
  const BaseCryptoCurrencyEvent();

  @override
  List<Object?> get props => [];
}

class LoadCurrentBitcoinPriceEvent extends BaseCryptoCurrencyEvent {
  const LoadCurrentBitcoinPriceEvent();
}

