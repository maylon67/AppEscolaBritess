import 'dart:convert';

import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

import 'package:app_escola_bites/app_config.dart';

class WsMovCaixa {
  Future<List<MovCaixa>> getMovCaixa(codigoCaixa, valorRifa) async {
    try {
      MapSD response = await WsController.executeWsPost(query: '/controller/getMovCaixa?cdcaixa=' + codigoCaixa, duration: const Duration(seconds: 35));

      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];

      String movimentoCaixa = '';
      List maps = response['movimentos'];
      List<MovCaixa> movimentosCaixa = [];
      maps.forEach((element) {
        movimentosCaixa.add(MovCaixa.fromJson(element));
      });

      return movimentosCaixa;
    } catch (e) {
      print('===  ERROR  getMovCaixa : ${e.toString()} ===');
      return [];
    }
  }
}
