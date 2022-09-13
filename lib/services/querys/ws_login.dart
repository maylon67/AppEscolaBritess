<<<<<<< HEAD
 import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/users_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsLogin{
  Future<String> getLogin(String email, String senha) async{

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getCaixa?email='+email+'&senha='+senha, duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return '';
      
      String codigoCaixa = response['CDCAIXA'];
      print(codigoCaixa);
      return codigoCaixa;
    } catch(e) {
      print('===  ERROR  getAllCaixa : ${e.toString()} ===');
      return '';
=======
import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/services/ws_config.dart';
import 'package:flutter/material.dart';
class WsLogin{
  Future<int> getLogin(String email,String senha) async{

    try{
      MapSD response = await WsController.executeWsPost(query: '/controller/getCaixa?email=' + email + '&senha=' + senha, duration: Duration(seconds: 35));
      
      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;
      
      String caixa = response['CDCAIXA'];
      print(caixa);
      
      return int.parse(caixa);
    } catch(e) {
      print('===  ERROR  getAllCaixa : ${e.toString()} ===');
      return 0;
>>>>>>> 567902c185e94988af1fcdf54eccbef3296cf6d3
    }
  }
}
