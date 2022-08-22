  import 'package:app_escola_bites/home_page.dart';
import 'package:app_escola_bites/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class MainDart extends StatefulWidget {
  const MainDart({ Key? key }) : super(key: key);

  @override
  State<MainDart> createState() => _MainDartState();
}

class _MainDartState extends State<MainDart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
