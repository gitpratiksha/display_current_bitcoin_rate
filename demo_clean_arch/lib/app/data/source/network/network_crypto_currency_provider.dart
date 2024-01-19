import 'package:demo_clean_arch/app/data/dto/current_bitcoin_price_dto.dart';
import 'package:demo_clean_arch/app/data/source/network/repositories/cryptocurrency_network_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkCryptoCurrencyProvider implements CryptoCurrencyNetworkRepository{
   final Dio _dio;

  NetworkCryptoCurrencyProvider(): _dio = Dio();

  @override
  Future<CurrentBitcoinPriceDto> getCurrentBitcoinPrice() {
   try{

     Response response = await dio
          .get('https://rickandmortyapi.com/api/character/?page=$page');

   }on DioException catch(e) {
    debugPrint(e.toString());
   }
  }
  
}