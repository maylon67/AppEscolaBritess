import 'dart:async';
import 'dart:convert';
import 'package:app_escola_bites/app_config.dart';
import 'package:http/http.dart' as http;

class WsController {
  static final WsController _singleton = WsController._internal();

  factory WsController() => _singleton;

  WsController._internal();

  static String url = 'http://187.49.145.22:1522';

  static Uri toUri(String query) => Uri().resolve(url + query);
  static Future<bool> testConnection() async {
    try {
      MapSD response = await executeWsPost(query: '/auth/ping');
      return response['ping'] == 'pong';
    } catch (e) {
      print(' === ERROR: $e === ');
      return false;
    }
  }

  static Future<MapSD> executeWsPost(
      {required String query,
      String body = '',
      Duration duration = const Duration(seconds: 15)}) async {
    try {
      String returnValue = '';
      // print(toUri(query));
      // print(body);

      print(toUri(query));
      await http
          .post(
            toUri(query),
            body: body,
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json",
            },
          )
          .timeout(duration)
          .then(
            (http.Response response) {
              returnValue = utf8.decode(response.bodyBytes);
            },
          );

      print(returnValue);
      return jsonDecode(returnValue);
    } on TimeoutException catch (e) {
      print('connection: ${e.toString()}');
      return {'connection': e.toString()};
    } catch (e) {
      print(e.toString());
      return {'error': e.toString()};
    }
  }
}
