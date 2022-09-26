import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class SaldoCaixa{

  static var f = NumberFormat('##,##,##0', 'pt-br');

  String dataCaixa = '';
  double valorSaldoFim = 0.0;
  SaldoCaixa(
    this.dataCaixa,
    this.valorSaldoFim,
  );
  SaldoCaixa.fromJson(MapSD json){
    dataCaixa = json['DTCAIXA'];
    valorSaldoFim = double.parse(json['VLRSLDFIM']);
  }
}