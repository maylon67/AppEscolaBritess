import 'package:app_escola_bites/app_config.dart';

class MetaCaixa{
  String mensalidade = '';
  String rifa = '';
  MetaCaixa(
    this.mensalidade,
    this.rifa,
    );
    MetaCaixa.fromJson(MapSD json){
      mensalidade = json['VLRMENSALIDADE'];
      rifa = json['VLRRIFA'];
    }
}
