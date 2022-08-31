import 'package:app_escola_bites/app_config.dart';

 class Saldos{
String saldoPessoal = '';
String mensalidade ='';
String rifa='';
String tipo = '';
String arrecadado = '';
String atingido = '';
String objetivo = '';
String imagemNumeroSaldo = '';

 Saldos(
 this.saldoPessoal,
 this.rifa,
 this.mensalidade,
 this.arrecadado,
 this.atingido,
 this.objetivo,
 this.tipo,
 this.imagemNumeroSaldo,
 );
 Saldos.fromJson(Map <String , dynamic> json) {
  saldoPessoal =json ['saldo_pessoa'];
  rifa =json['rifa'];
  mensalidade = json['mensalidade'];
  arrecadado = json['arrecadado'];
  atingido = json['atingido'];
  objetivo = json['objetivo'];
  tipo = json['tipo'];
  imagemNumeroSaldo =json['imagem_do_numero_em_saldo'];
 }
 }

