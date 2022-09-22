import 'package:app_escola_bites/app_config.dart';

class Movimento{
  String data = '';
  String operacao = '';
  String vlrmovbco = '';
  String tipo = '';
  Movimento(
    this.data,
    this.operacao,
    this.vlrmovbco,
    this.tipo,
  );
  Movimento.fromJson(MapSD json){
    data = json['DATA'];
    operacao = json['OPERACAO'];
    vlrmovbco = json['VLRMOVBCO'];
    tipo = json['TIPO'];
}}
