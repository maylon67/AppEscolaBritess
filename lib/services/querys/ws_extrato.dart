import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:app_escola_bites/models/seu_saldo_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsExtratos{
  Future<List<Movimento>> getAllMetaCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22/controller/getMetaCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['meta_caixa'];
      List<Movimento> extrato = [];
       maps.forEach((element) {
        extrato.add(Movimento.fromJson(element));
      });
      return extrato;
    } catch(e) { 
      print('===  ERROR  getAllMetaCaixa : ${e.toString()} ===');
      return [];
    }
  }
}
