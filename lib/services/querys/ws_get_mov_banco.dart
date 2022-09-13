import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';

class MovimentoBanco {
  Future<int> getMoviBanco() async {
    try {
      MapSD response = await WsController.executeWsPost(
          query: '/controller/getMovBanco',
          duration: const Duration(seconds: 35));

      if (response.containsKey('error') ||
          response.containsKey('connection') ||
          response.isEmpty) return 0;

      String movimentoBanco = response[{
        "movimentos": [
          {
            "DATA": "31/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "880",
            "TIPO": "D"
          },
          {
            "DATA": "31/08/2022",
            "OPERACAO": "RIFA",
            "VLRMOVBCO": "700",
            "TIPO": "D"
          },
          {
            "DATA": "30/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "120",
            "TIPO": "D"
          },
          {
            "DATA": "29/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "300",
            "TIPO": "D"
          },
          {
            "DATA": "26/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "120",
            "TIPO": "D"
          },
          {
            "DATA": "23/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "60",
            "TIPO": "D"
          },
          {
            "DATA": "19/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "120",
            "TIPO": "D"
          },
          {
            "DATA": "19/08/2022",
            "OPERACAO": "FESTA JUNINA",
            "VLRMOVBCO": "3091.8",
            "TIPO": "D"
          },
          {
            "DATA": "19/08/2022",
            "OPERACAO": "FESTA JUNINA",
            "VLRMOVBCO": "63.5",
            "TIPO": "D"
          },
          {
            "DATA": "17/08/2022",
            "OPERACAO": "FESTA JUNINA",
            "VLRMOVBCO": "24.1",
            "TIPO": "D"
          },
          {
            "DATA": "16/08/2022",
            "OPERACAO": "FESTA JUNINA",
            "VLRMOVBCO": "1996.42",
            "TIPO": "D"
          },
          {
            "DATA": "16/08/2022",
            "OPERACAO": "MENSALIDADE",
            "VLRMOVBCO": "140",
            "TIPO": "D"
          }
        ]
      }];
      print(movimentoBanco);

      return int.parse(movimentoBanco);
    } catch (e) {
      print('===  ERROR  getAllCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}
