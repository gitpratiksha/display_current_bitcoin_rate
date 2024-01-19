import 'package:equatable/equatable.dart';

class BaseCryptoCurrencyState extends Equatable {
  const BaseCryptoCurrencyState();

  @override
  List<Object?> get props => [];
}

class BaseCryptoCurrencyIdleState extends BaseCryptoCurrencyState {
  const BaseCryptoCurrencyIdleState();

  @override
  List<Object?> get props => [];
}

//////////////////////// BITCOIN PRICE STATES /////////////////////////////
class BaseBitcoinState extends BaseCryptoCurrencyState {
  const BaseBitcoinState();

  @override
  List<Object?> get props => [];
}

class LoadCurrentBitcoinPriceIdleState extends BaseBitcoinState {
  const LoadCurrentBitcoinPriceIdleState();
}

class CurrentBitcoinPriceLoadingState extends BaseBitcoinState {
  const CurrentBitcoinPriceLoadingState();
}

class CurrentBitcoinPriceLoadingErrortate extends BaseBitcoinState {
  const CurrentBitcoinPriceLoadingErrortate();
}

class CurrentBitcoinPriceLoadingResultState extends BaseBitcoinState {
  const CurrentBitcoinPriceLoadingResultState();

  @override
  List<Object?> get props => [];
}

class CurrentBitcoinPriceLoadingCompleteState extends BaseBitcoinState {
  const CurrentBitcoinPriceLoadingCompleteState();
}
//////////////////////// ITCOIN PRICE STATES END /////////////////////////////




