import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/saldo_caixa_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsSaldoCaixa{
  WsSaldoCaixa(String dataCaixa, String valorSaldoFim);
  Future<List<SaldoCaixa>> getSaldoCaixa(int numero) async{ 

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoCaixa?cdcaixa=' + numero.toString(), duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      String dataCaixa = response["DTCAIXA"];
      String valorSaldoFim = response["VLRSLDFIM"];
      WsSaldoCaixa saldoCaixa = WsSaldoCaixa(dataCaixa, valorSaldoFim);
      List<SaldoCaixa> saldoCaixas = [];
      
      return saldoCaixas;
    } catch(e) {
      print('===  ERROR  getSaldoCaixa : ${e.toString()} ===');
      return [];
    }
  }
}