import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/home_page.dart';
import 'package:app_escola_bites/services/querys/ws_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
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
  return md5.convert(utf8.encode(text)).toString().toUpperCase();
}

TextEditingController emailControle = TextEditingController();
TextEditingController senhaControle = TextEditingController();
TextEditingController userControlle = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  List<String> users = [];

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  bool estaObscuro = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Color(0xFFFFFFFF),
        width: double.infinity,
        child: SingleChildScrollView(
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
                ),
                elevation: 6,
                child: TypeAheadField(
                  suggestionsBoxDecoration: SuggestionsBoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  textFieldConfiguration: TextFieldConfiguration(
                    focusNode: emailFocus,
                    controller: emailControle,
                    style: TextStyle(
                        fontSize: 18,
                        // fontFamily: primaryFont,
                        color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xFF083D99),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF083D99),
                      ),
                      alignLabelWithHint: false,
                    ),
                  ),
                  noItemsFoundBuilder: (context) =>
                      Container(height: 0, width: 0),
                  loadingBuilder: (context) =>
                      Container(height: 0, width: 0),
                  suggestionsCallback: (pattern) async {
                    if (pattern == "") return users;
                    return users.where(
                        (element) => element.contains(pattern));
                  },
                  itemBuilder: (context, String suggestion) =>
                      ListTile(title: Text(suggestion)),
                  onSuggestionSelected: (String suggestion) {
                    emailControle.text = suggestion;
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 6,
                child: TextFormField(
                  obscureText: estaObscuro,
                  focusNode: passwordFocus,
                  controller: senhaControle,
                  style: TextStyle(
                    fontSize: 18,
                    // fontFamily: primaryFont,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(),
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Color(0xFF083D99),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF083D99),
                    ),
                    alignLabelWithHint: false,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() => estaObscuro = !estaObscuro);
                        },
                        icon: Icon(
                          estaObscuro
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFF083D99),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 67),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        numeroDoCaixa = await WsLogin().getLogin(
                            emailControle.text.trim(),
                            textToMd5(senhaControle.text.trim()));
                        //testar se numero do caixa e diferente de 0
                       // if (numeroDoCaixa.codigoCaixa == 0) {
                       //   Text(
                       //     'Login Invalido',
                       //     style: GoogleFonts.reemKufi(
                       //         color: Colors.red, fontSize: 13),
                       //   );
                       // } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => HomePage(numeroDoCaixa),
                            ),
                          );
                       // }
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontSize: 27,
                        ),
                      ),
                      style: ButtonStyle(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 125),
              ),
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
                    'DESENVOLVIDO POR BISOFT',
                    style: GoogleFonts.oswald(
                      fontSize: 15,
                      height: 26,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.stretch,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
