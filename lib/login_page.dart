import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
TextEditingController emailControle = TextEditingController();
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
                      Text('Colégio Tiradentes',style: GoogleFonts.oswald(color: Color(0xFF083D99),fontSize: 29),),
                      SizedBox(height: 60,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),side:BorderSide(color: Color(0xff083d99),width: 2.5) ),

                        child: TextFormField(
                          controller: emailControle,
                          decoration: InputDecoration(
                             contentPadding: EdgeInsets.symmetric(vertical: 5),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  prefixIcon: Icon(Ionicons.mail_sharp,color: Color(0xFF083d99),),
                                  labelText: 'Seu email',
                                  labelStyle: GoogleFonts.oswald(
                                    color: Color(0xff083d99),
                                    fontSize: 20,
                                  ),
                          ),
                        ),
                      ),
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