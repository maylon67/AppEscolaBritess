import 'package:app_escola_bites/app_config.dart';

class Movimento{
  String data = '';
  String operacao = '';
  String vlrmovbco = '';
  String tipo = '';
  Movimento(
    this.data,
    this.operacao,
    this.vlrmovbco,
    this.tipo,
  );
  Movimento.fromJson(MapSD json){
    data = json['data'];
    operacao = json['operacao'];
    vlrmovbco = json['vlrmovbco'];
    tipo = json['tipo'];
  }
}