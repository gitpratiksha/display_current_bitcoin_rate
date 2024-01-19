import 'package:demo_clean_arch/app/domain/entities/current_bitcoin_price.dart';

abstract class CryptoCurrencyRepository {
  Future<CurrentBitcoinPrice> getCurrentBitcoinPrice();
}