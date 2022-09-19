/*import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/seu_saldo_models.dart';
import 'package:app_escola_bites/services/querys/ws_meta_caixa.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsMetaCaixa{
  Future<MetaCaixa> getMetaCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getMetaCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;
      
      String mensalidade = response['VLRMENSALIDADE'];
      String rifa = response['VLRRIFA'];
      MetaCaixa metaCaixa = MetaCaixa(mensalidade, rifa);

      return int.parse(metaCaixa);
    } catch(e) { 
      print('===  ERROR  getMetaCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}
*/