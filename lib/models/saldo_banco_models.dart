import 'package:app_escola_bites/app_config.dart';

class SaldoBanco {
  String dataBanco = '';
  String valoresDeFim = '';
  
    SaldoBanco(
    this.dataBanco, 
    this.valoresDeFim,
    );
    SaldoBanco.fromJson(MapSD json){
      dataBanco = json['DTBCO'];
      valoresDeFim = json['VLRSLDFIM'];
    }
}
