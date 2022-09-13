import 'package:app_escola_bites/services/ws_config.dart';

import '../../app_config.dart';

class Caixa {
  Future<int> getMovCaixa(codigoCaixa, valorRifa) async {
    try {
      MapSD response = await WsController.executeWsPost(
          query: '/controller/getCaixa?cdcaixa=' + codigoCaixa,
          duration: const Duration(seconds: 35));

      if (response.containsKey('error') ||
          response.containsKey('connection') ||
          response.isEmpty) return 0;

      String saldoCaixa = response['DTCAIXA'];
      print(saldoCaixa);

      return int.parse(saldoCaixa);
    } catch (e) {
      print('===  ERROR  getAllCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}
