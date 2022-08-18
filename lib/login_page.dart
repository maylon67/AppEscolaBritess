import 'package:app_escola_bites/app_config.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: altura(context) - MediaQuery.of(context).padding.top,
            color: Color(0xFFFFFFFF),
            child: Stack(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 145),
                child: Form(
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40,),
                      Image.asset('lib/assets/escolaa.png',),
                      SizedBox(height: 8,),
                      Text('Colégio Tiradentes',style: GoogleFonts.allura(color: Colors.black,fontSize: 29),)
                    ],
                )
                ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}