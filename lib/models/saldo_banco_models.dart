import 'package:app_escola_bites/app_config.dart';

class MovimentoSaldoBanco {
  String dataBanco = '';
  String valoresDeFim = '';
  
  MovimentoSaldoBanco(
    this.dataBanco, 
    this.valoresDeFim,
    );
    MovimentoSaldoBanco.fromJson(MapSD json){
      dataBanco = json['DTBCO'];
      valoresDeFim = json['VLRSLDFIM'];
    }
}
