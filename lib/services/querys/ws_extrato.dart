import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/seu_saldo_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsExtratos{
  Future<List<SeuSaldo>> getAllCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getCaixa?email=dudabatistabrites@gmail.com&senha=3FB358DEAB521030689AC5E129454E7B'+numero.toString(), duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return [];
      
      List maps = response['caixo'];
      List<SeuSaldo> extrato = [];
       maps.forEach((element) {
        extrato.add(SeuSaldo.fromJson(element));
      });
      return extrato;
    } catch(e) {
      print('===  ERROR  getAllCaixa : ${e.toString()} ===');
      return [];
    }
  }

  Future<List<SeuSaldo>> getAllSaldoCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getSaldoCaixa?cdcaixa=16'+numero.toString(), duration: Duration(seconds: 35));
      
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

  Future<List<SeuSaldo>> getAllSaldoBanco(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getSaldoBanco'+numero.toString(), duration: Duration(seconds: 35));
      
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

  Future<List<SeuSaldo>> getAllMovCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getMovCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 35));
      
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

  Future<List<SeuSaldo>> getAllMovBanco(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22:1522/controller/getMovBanco'+numero.toString(), duration: Duration(seconds: 35));
      
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

  Future<List<SeuSaldo>> getAllMetaCaixa(int numero) async{

    try{
      MapSD response = await WsController.executeWsPost(query: 'http://187.49.145.22/controller/getMetaCaixa?cdcaixa='+numero.toString(), duration: Duration(seconds: 35));
      
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
