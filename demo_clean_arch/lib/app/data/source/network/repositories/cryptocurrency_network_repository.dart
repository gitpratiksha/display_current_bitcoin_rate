import 'package:demo_clean_arch/app/data/dto/current_bitcoin_price_dto.dart';

abstract class CryptoCurrencyNetworkRepository {
  Future<CurrentBitcoinPriceDto> getCurrentBitcoinPrice();
}