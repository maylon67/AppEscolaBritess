import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/saldo_banco_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';
class SaldoBanco{
  SaldoBanco(String dataBanco,String valoresDeFim);
Future<List<MovimentoSaldoBanco>> getSaldoBanco() async{
    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoBanco', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      String dataBanco = response['DTBCO'];
      String valoresDeFim = response['VLRSDFIM'];
      List <MovimentoSaldoBanco> buscaSaldoBanco = [];
      SaldoBanco movimentosSaldoBanco = SaldoBanco(dataBanco, valoresDeFim);

      return buscaSaldoBanco;
    } catch(e) {
      print('===  ERROR  getSaldoBanco : ${e.toString()} ===');
      return [];
    }
  }
}