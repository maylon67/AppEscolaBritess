import 'package:app_escola_bites/app_config.dart';

 class Saldos{
String saldoPessoal = '';
String mensalidade ='';
String rifa='';
String tipo = '';
String arrecadado = '';
String atingido = '';
String objetivo = '';

 Saldos(
 this.saldoPessoal,
 this.rifa,
 this.mensalidade,
 this.arrecadado,
 this.atingido,
 this.objetivo,
 this.tipo
 );
 Saldos.fromJson(Map <String , dynamic> json) {
  saldoPessoal =json ['saldo_pessoa'];
  rifa =json['rifa'];
  mensalidade = json['mensalidade'];
  arrecadado = json['arrecadado'];
  atingido = json['atingido'];
  objetivo = json['objetivo'];
  tipo = json['tipo'];
 }
 }

