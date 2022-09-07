import 'package:app_escola_bites/lista_page.dart';
import 'package:app_escola_bites/lista_segunda_page.dart';
import 'package:app_escola_bites/models/users_models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:app_escola_bites/app_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
   
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 247, 247),
      appBar: AppBar(
        title: Text(
          'Seja bem vindo Usuario!',
          style: GoogleFonts.oswald(fontSize: 25),
        ),
        backgroundColor: Color(0xFFF52314),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(25)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                       EdgeInsets.symmetric(vertical: 15, horizontal: 3),
                  child: GestureDetector(
                      child: Card(
                        color: Colors.white,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: corPadraoApp,
                            width: 2.5,
                          ),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'Seu Saldo',
                                style: GoogleFonts.openSans(
                                  color: corPadraoApp,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 0),
                                child: Text(
                                  'R\$ 498.986,98',
                                  style: GoogleFonts.oswald(
                                      fontSize: 42,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 0,
                              color: Colors.black,
                              thickness: 1.5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Tipo',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    'Mensalidade',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    'Rifa',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 0,
                              color: Colors.black,
                              thickness: 1.5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Objetivo',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    'hfhufhgfgf',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '1.400,00',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),),
                                ],
                              ),
                            ),
                            Divider(
                              height: 0,
                              color: Colors.black,
                              thickness: 1.5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                      child: Text(
                                    'Arrecadado',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        ),
                                  ),),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '99,999,99',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '99.999,99',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                            Divider(
                              height: 0,
                              color: Colors.black,
                              thickness: 1.5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    '% Atingida',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '999,99',
                                    style: GoogleFonts.oswald(
                                        color: Color.fromARGB(255, 16, 16, 16),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  Container(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '999,99',
                                    style: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                          //  Divider(
                          //    height: 0,
                          //    color: Colors.black,
                          //    thickness: 1.5,
                          //  )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => listaPage()));
                      }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 1),
                  child: GestureDetector(
                      child: Card(
                        color: Colors.white,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: corPadraoApp, width: 1.9),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                            ),
                            Center(
                              child: Text(
                                'Saldo Bancario',
                                style: GoogleFonts.oswald(
                                    color: corPadraoApp,
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 25)),
                            Center(
                                child: Text(
                              'R\$ 99.999,99',
                              style: GoogleFonts.oswald(
                                  fontSize: 42,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 20)),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => listaSegundaPage()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
