import 'package:app_escola_bites/app_config.dart';

class SaldoCaixa{
  String dataCaixa = '';
  String valorSaldoFim = '';
  SaldoCaixa(
    this.dataCaixa,
    this.valorSaldoFim,
  );
  SaldoCaixa.fromJson(MapSD json){
    dataCaixa = json['DTCAIXA'];
    valorSaldoFim = json['VLRSLDFIM'];
  }
}