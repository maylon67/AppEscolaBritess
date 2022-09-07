import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/users_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsExtratos{

  Future<List<SeuSaldo>> getAllSaldoCaixa() async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getSaldoCaixa?cdcaixa=16', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['saldo'];
      List<SeuSaldo> extrato = [];
       maps.forEach((element) {
        extrato.add(SeuSaldo.fromJson(element));
      });
      return extrato;
    } catch(e) {
      print('===  ERROR  getAllSaldoCaixa : ${e.toString()} ===');
      return [];
    }
  }

  Future<List<SeuSaldo>> getAllSaldoBanco() async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getSaldoBanco', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['saldo_banco'];
      List<SeuSaldo> extrato = [];
       maps.forEach((element) {
        extrato.add(SeuSaldo.fromJson(element));
      });
      return extrato;
    } catch(e) {
      print('===  ERROR  getAllSaldoBanco : ${e.toString()} ===');
      return [];
    }
  }

  Future<List<SeuSaldo>> getAllMovCaixa() async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getMovCaixa?cdcaixa=16', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['mov_caixa'];
      List<SeuSaldo> extrato = [];
       maps.forEach((element) {
        extrato.add(SeuSaldo.fromJson(element));
      });
      return extrato;
    } catch(e) {
      print('===  ERROR  getAllMovCaixa : ${e.toString()} ===');
      return [];
    }
  }

  Future<List<SeuSaldo>> getAllMovBanco() async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getMovBanco', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['mov_banco'];
      List<SeuSaldo> extrato = [];
       maps.forEach((element) {
        extrato.add(SeuSaldo.fromJson(element));
      });
      return extrato;
    } catch(e) {
      print('===  ERROR  getAllMovBanco : ${e.toString()} ===');
      return [];
    }
  }

  Future<List<SeuSaldo>> getAllMetaCaixa() async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getMetaCaixa?cdcaixa=16', duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['meta_caixa'];
      List<SeuSaldo> extrato = [];
       maps.forEach((element) {
        extrato.add(SeuSaldo.fromJson(element));
      });
      return extrato;
    } catch(e) { 
      print('===  ERROR  getAllMetaCaixa : ${e.toString()} ===');
      return [];
    }
  }
}
