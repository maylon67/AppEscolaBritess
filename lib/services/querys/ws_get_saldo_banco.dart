import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';
class SaldoBanco{
Future<int> getLogin() async{
    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoBanco', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;
      
      String caixa = response['DTBCO'];
      print(caixa);
      return int.parse(caixa);
    } catch(e) {
      print('===  ERROR  getLogin : ${e.toString()} ===');
      return 0;
    }
  }
}