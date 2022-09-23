import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class MetaCaixa{
  
  static var f = NumberFormat('##,##,##0', 'pt-br');
  
  String mensalidade = '';
  String rifa = '';
  MetaCaixa(
    this.mensalidade,
    this.rifa,
    );
    MetaCaixa.fromJson(MapSD json){
      mensalidade = f.format(json['VLRMENSALIDADE']);
      rifa = f.format(['VLRRIFA']);
    }
}
