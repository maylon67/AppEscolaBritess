import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/saldo_banco_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';
class WsSaldoBanco{
Future<SaldoBanco> getSaldoBanco() async{
    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoBanco', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) SaldoBanco("", 0);
    
      String dataBanco = response['DTBCO'];
      double valoresDeFim = (response['VLRSLDFIM']);
      //String valoresDeFim = response['VLRSDFIM'];
      //TODO criar model de saldo banco
      SaldoBanco saldoBanco = SaldoBanco.fromJson(response);
      
      return saldoBanco; 
    } catch(e) {
      print('===  ERROR  getSaldoBanco : ${e.toString()} ===');
      return SaldoBanco("", 0);
    }
  }
}
