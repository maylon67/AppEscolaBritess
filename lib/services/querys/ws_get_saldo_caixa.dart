import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';
class wsSaldoCaixa{
  Future<int> getSaldoCaixa(codigoCaixa,valorRifa) async{ 
    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoCaixa?cdcaixa=' + codigoCaixa, duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;
      String saldoCaixa = response['DTCAIXA'];
      print(saldoCaixa);
      return int.parse(saldoCaixa);
    } catch(e) {
      print('===  ERROR  getSaldoCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}