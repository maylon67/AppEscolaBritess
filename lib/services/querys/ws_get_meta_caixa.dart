import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/metacaixa.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsMetaCaixa{
  // WSMetaCaixa(String mensalidade, String rifa);
  Future<MetaCaixa> getMetaCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getMetaCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return MetaCaixa("", "");
      
      String mensalidade = response['VLRMENSALIDADE'];
      String rifa = response['VLRRIFA'];
      MetaCaixa metaCaixa = MetaCaixa(mensalidade, rifa);
      return metaCaixa;
    } catch(e) { 
      print('===  ERROR  getMetaCaixa : ${e.toString()} ===');
      return MetaCaixa("", "");
    }
  }
}
