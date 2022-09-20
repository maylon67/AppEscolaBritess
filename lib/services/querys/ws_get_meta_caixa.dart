import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/seu_saldo_models.dart';
import 'package:app_escola_bites/services/querys/ws_meta_caixa.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsMetaCaixa{
  WsMetaCaixa(String mensalidade, String rifa);

  Future<String> getMetaCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getMetaCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return '';
      
      String mensalidade = response['VLRMENSALIDADE'];
      String rifa = response['VLRRIFA'];
      WsMetaCaixa metaCaixa = WsMetaCaixa(mensalidade, rifa);

      return metaCaixa.toString();
    } catch(e) { 
      print('===  ERROR  getMetaCaixa : ${e.toString()} ===');
      return '';
    }
  }
}
