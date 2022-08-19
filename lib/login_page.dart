import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 45),
            child: Image.asset('lib/assets/colegiomilitarlogo.png',
            ),
          ),
        ],
      ),
    );
  }
}