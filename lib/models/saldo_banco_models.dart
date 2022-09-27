import 'package:app_escola_bites/app_config.dart';
import 'package:intl/intl.dart';

class SaldoBanco {

  static var f = NumberFormat('##,###,##0', 'pt-br');
  
  String dataBanco = '';
  double valoresDeFim = 0.0;
  
    SaldoBanco(
    this.dataBanco, 
    this.valoresDeFim,
    );
    SaldoBanco.fromJson(MapSD json){
      dataBanco = json['DTBCO'];
      valoresDeFim = double.parse(json['VLRSLDFIM'].toString());
    }
}
