import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String textToMd5(String text) {
  print(' $text');
  return md5.convert(utf8.encode(text)).toString();
}

TextEditingController emailControle = TextEditingController();
TextEditingController senhaControle = TextEditingController();
TextEditingController userControle = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  bool estaObscuro = true;
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 42,
                        ),
                        Image.asset(
                          'lib/assets/escolaa.png',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Formandos 2024',
                          style: GoogleFonts.oswald(
                              color: Color(0xFF083D99), fontSize: 30),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(
                                  color: Color(0xff083d99), width: 2.5),),
                          child: TextFormField(
                            controller: emailControle,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Ionicons.mail_sharp,
                                color: Color(0xFF083d99),
                              ),
                              labelText: 'Seu email',
                              labelStyle: GoogleFonts.oswald(
                                color: Color(0xff083d99),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          shadowColor: Color.fromARGB(255, 14, 59, 136),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: BorderSide(
                                  color: Color(0xff083d99), width: 2.5)),
                          child: TextFormField(
                            controller: senhaControle,
                            obscureText: estaObscuro,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 12),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Ionicons.key,
                                color: corPadraoApp,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() => estaObscuro = !estaObscuro);
                                  },
                                  icon: Icon(
                                    estaObscuro
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.red,
                                  ),),
                              labelText: 'Sua Senha',
                              labelStyle: GoogleFonts.oswald(
                                color: Color(0xff083d99),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          shadowColor: Color.fromARGB(255, 14, 59, 136),
                        ),
                        SizedBox(height: 67),
                        Row(
                          children: [
                            Expanded(
                              child: RaisedButton(
                                onPressed: () {
                                 // Navigator.push(
                                 //     context,
                                     // MaterialPageRoute(
                                     //     builder: (_) => HomePage())
                                     // );
                                },
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: 27,
                                  ),
                                ),
                                color: corPadraoApp,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 1, 1, 1),
                                        width: 1.5),
                                        ),
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 125),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/assets/bisoft.png',
                              height: 42,
                              width: 42,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'Desenvolvido Por BISOFT',
                              style: GoogleFonts.oswald(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 0, 0, 0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
