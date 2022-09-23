import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class SaldoBanco {

  static var f = NumberFormat('##,##,##0', 'pt-br');
  
  String dataBanco = '';
  String valoresDeFim = '';
  
    SaldoBanco(
    this.dataBanco, 
    this.valoresDeFim,
    );
    SaldoBanco.fromJson(MapSD json){
      dataBanco = f.format(json['DTBCO']);
      valoresDeFim = f.format(json['VLRSLDFIM']);
    }
}
