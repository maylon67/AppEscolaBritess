import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class MetaCaixa{
  
  static var f = NumberFormat('##,##,##0', 'pt-br');
  
  double mensalidade = 0.0;
  double rifa = 0.0;
  MetaCaixa(
    this.mensalidade,
    this.rifa,
    );
    MetaCaixa.fromJson(MapSD json){
      mensalidade = double.parse(json['VLRMENSALIDADE']);
      rifa = double.parse(json['VLRRIFA']);
    }
}
