import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listaSegundaPage extends StatefulWidget {
  const listaSegundaPage({Key? key}) : super(key: key);

  @override
  State<listaSegundaPage> createState() => _listaSegundaPageState();
}

class _listaSegundaPageState extends State<listaSegundaPage> {
  ScrollController controleLista = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text(
          'Seu Extrato Bancario',
          style: GoogleFonts.rubikMonoOne(fontSize: 17),
        ),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Tipo',
                      style: GoogleFonts.antonio(
                        color: corPadraoApp,
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      'Mensalidade',
                      style:
                          GoogleFonts.antonio(fontSize: 22, color: corPadraoApp),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      'Data',
                      style:
                          GoogleFonts.antonio(fontSize: 22, color: corPadraoApp),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      'Movimento Bancario',
                    style: GoogleFonts.antonio(fontSize: 22,color: corPadraoApp),
                    ),
                  ],
                ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Divider(
                  thickness: 2.5,
                  color: Colors.black,
                  height: 0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
