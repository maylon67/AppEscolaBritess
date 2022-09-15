import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/seu_saldo_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class MetaCaixa{
  Future<int> getMetaCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getMetaCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 60));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;
      
      String metaCaixa = response['VLRMENSALIDADE'];
      print(metaCaixa);
      return int.parse(metaCaixa);
    } catch(e) { 
      print('===  ERROR  getMetaCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}