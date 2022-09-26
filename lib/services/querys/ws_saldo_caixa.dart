import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/saldo_caixa_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsSaldoCaixa{
  //WsSaldoCaixa(String dataCaixa, String valorSaldoFim);
  Future<SaldoCaixa> getSaldoCaixa(String codigoCaixa) async{ 

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoCaixa?cdcaixa=' + codigoCaixa, duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return SaldoCaixa('',0);
      
      String data = response["DTCAIXA"];
      double valorSaldoFim = double.parse(response["VLRSLDFIM"]);
      //criar saldo caixa model
      SaldoCaixa saldoCaixa = SaldoCaixa(data, valorSaldoFim);
      return saldoCaixa;
    } catch(e) {
      print('===  ERROR  getSaldoCaixa : ${e.toString()} ===');
      return SaldoCaixa('', 0);
    }
  }
}