import 'package:app_escola_bites/login_page.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage()
  ));
   var dataToHash = '123456';

  var bytesToHash = utf8.encode(dataToHash);
  var md5Digest = md5.convert(bytesToHash);

  print('Data to hash: $dataToHash');
  print('MD5: $md5Digest');
}
class MainDart extends StatefulWidget {
  const MainDart({ Key? key }) : super(key: key);

  @override
  State<MainDart> createState() => _MainDartState();
}

class _MainDartState extends State<MainDart> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
