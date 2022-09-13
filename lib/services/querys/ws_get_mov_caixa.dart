import './../ws_config.dart';

import '../../app_config.dart';

class Caixa {
  Future<int> getMovCaixa(codigoCaixa, valorRifa) async {
    try {
      MapSD response = await WsController.executeWsPost(
          query: '/controller/getMovCaixa?cdcaixa=' + codigoCaixa,
          duration: const Duration(seconds: 35));

      if (response.containsKey('error') ||
          response.containsKey('connection') ||
          response.isEmpty) return 0;

      String saldoCaixa = response[{"movimentos":[{"DATA":"16/08/2022","OPERACAO":"MENSALIDADE","VALOR":"70","TIPO":"D"}]}];
      print(saldoCaixa);

      return int.parse(saldoCaixa);
    } catch (e) {
      print('===  ERROR  getAllCaixa : ${e.toString()} ===');
      return 0;
    }
  }
}
