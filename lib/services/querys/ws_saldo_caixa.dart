import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsSaldoCaixa{
  Future<int> getSaldoCaixa(codigoCaixa,valorRifa) async{ 

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getSaldoCaixa?cdcaixa=' + codigoCaixa, duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;
      
      String saldoCaixa = response[{"DTCAIXA":"16/08/2022","VLRSLDFIM":"70"}];
      print(saldoCaixa);
      
      return int.parse(saldoCaixa);
    } catch(e) {
      print('===  ERROR  getSaldoCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}