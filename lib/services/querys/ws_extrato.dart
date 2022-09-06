import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/users_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsFinanceiro{

  Future<List<SeuSaldo>> getCaixa() async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://localhost:8000/controller/getSaldoCaixa?cdcaixa=16', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['contas_receber'];
      List<SeuSaldo> contas = [];
      
      maps.forEach((element) {
       // contas.add(SeuSaldo.fromMap(element));
      });
      return contas;
    } catch(e) {
      print('===  ERROR  getAllFinanceiroContasReceber : ${e.toString()} ===');
      return [];
    }
  }
}
