import 'package:app_escola_bites/app_config.dart';

class Login{
  int codigoCaixa = 0;
  String noCaixa = '';
  Login(
    this.codigoCaixa,
    this.noCaixa,
  );
  Login.fromJson(MapSD json){
    codigoCaixa = int.parse(json['CDCAIXA']);
    noCaixa = json['NOCAIXA'];
  }
}