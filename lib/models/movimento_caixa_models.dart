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
    data = json['data'];
    operacao = json['operacao'];
    mensalidade = json['mensalidade'];
    valor = json['valor'];
    tipo = json['tipo'];
}
}