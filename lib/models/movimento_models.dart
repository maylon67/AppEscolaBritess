import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class Movimento{

  static var f = NumberFormat('##,###s,##0', 'pt-br');
  
  String data = '';
  String operacao = '';
  double vlrmovbco = 0.0;
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
    vlrmovbco = double.parse(json['VLRMOVBCO']);
    tipo = json['TIPO'];
}}
