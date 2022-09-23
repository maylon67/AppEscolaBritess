import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class SaldoCaixa{

  static var f = NumberFormat('##,##,##0', 'pt-br');

  String dataCaixa = '';
  String valorSaldoFim = '';
  SaldoCaixa(
    this.dataCaixa,
    this.valorSaldoFim,
  );
  SaldoCaixa.fromJson(MapSD json){
    dataCaixa = f.format(json['DTCAIXA']);
    valorSaldoFim = f.format(json['VLRSLDFIM']);
  }
}