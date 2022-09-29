import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/login_models.dart';
import 'package:app_escola_bites/services/ws_config.dart';

class WsLogin {
  Future<int> getLogin(String email, String senha) async {
    try {
      MapSD response = await WsController.executeWsPost(query: '/controller/getCaixa?email=' + email + '&senha=' + senha, duration: Duration(seconds: 35));

      if (response.containsKey('error') || response.containsKey('connection') || response.isEmpty) return 0;

      int codigoCaixa = response['CDCAIXA'];
      String noCaixa = response['NOCAIXA'];
      Login login = Login(codigoCaixa, noCaixa);
      return int.parse(login.noCaixa);
    } catch (e) {
      print('===  ERROR  getLogin : ${e.toString()} ===');
      return 0;
    }
  }
}
