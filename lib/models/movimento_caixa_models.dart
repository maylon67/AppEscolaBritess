import 'package:app_escola_bites/app_config.dart';

class MovCaixa{
  String data = '';
  String operacao = '';
  String mensalidade = '';
  String valor = '';
  String tipo = '';
  MovCaixa(
    this.data,
    this.operacao,
    this.mensalidade,
    this.valor,
    this.tipo,
  );
  MovCaixa.fromJson(MapSD json){
    data = json['DATA'];
    operacao = json['OPERACAO'];
    mensalidade = json['MENSALIDADE'];
    valor = json['VALOR'];
    tipo = json['TIPO'];
}
}