import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:intl/intl.dart';

class MovCaixa{

  static var f = NumberFormat('##,###,##0', 'pt-br');

  List<Movimento> listMovBco = [];
  
  String data = '';
  String operacao = '';
  double valor =0.0;
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
    valor = double.parse(json['VALOR']);
    tipo = json['TIPO'];
}
}