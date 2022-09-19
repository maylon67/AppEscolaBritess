import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';

class WsMovimentoBanco {
  Future<List<Movimento>> getMoviBanco() async {
    try {
      //Recebendo JSON
      // JSON dentro do response
      MapSD response = await WsController.executeWsPost(query: '/controller/getMovBanco', duration: const Duration(seconds: 35));

      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      String movimentoBanco = '';

      // RESPONSE['NOME_CAMPO']
      // NAO VAI O JSON COMPLETO
      // response['movimento']
      List maps = response['movimentos'];
      List<Movimento> movBanco = [];
      maps.forEach((element) {movBanco.add(Movimento.fromJson(element)); });

      return movBanco;
    } catch (e) {
      print('===  ERROR  getMovBanco : ${e.toString()} ===');
      return [];
    }
  }
}
