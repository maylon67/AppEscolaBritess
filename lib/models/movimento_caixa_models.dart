import 'package:app_escola_bites/app_config.dart';

class MovCaixa{
  String data = '';
  String operacao = '';
  String valor ='';
  String tipo = '';
  MovCaixa(
    this.data,
    this.operacao,
    this.valor,
    this.tipo,
  );
  MovCaixa.fromJson(MapSD json){
    data = json['DATA'];
    operacao = json['OPERACAO'];
    valor = json['VALOR'];
    tipo = json['TIPO'];
}
}