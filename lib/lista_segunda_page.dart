import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listaSegundaPage extends StatefulWidget {
  const listaSegundaPage({ Key? key }) : super(key: key);

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
        title: Text('Seu Extrato Bancario',style: GoogleFonts.abel(),),
        backgroundColor: corPadraoApp,
        centerTitle: true,

      ),
      body:SafeArea(
        child: SingleChildScrollView(
     child: Padding(padding: EdgeInsets.symmetric(vertical: 15,),
     child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5,),),

          ],
     ),
     ),
      ),
      ),
    );   
  }
}
