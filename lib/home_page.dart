import 'package:app_escola_bites/lista_page.dart';
import 'package:app_escola_bites/lista_segunda_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:app_escola_bites/app_config.dart';

class PaginaInico extends StatefulWidget {
  const PaginaInico({ Key? key }) : super(key: key);

  @override
  State<PaginaInico> createState() => _PaginaInicoState();
}

class _PaginaInicoState extends State<PaginaInico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 96, 96),
      body: SizedBox(
        height: altura(context),
        width: largura(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
          SizedBox(height: 398,width: 390,child: GestureDetector(child: Card(color: Colors.yellow,),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_) => listaSegundaPage()));},),),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
           SizedBox(height: 430,width: 390,child: GestureDetector(child: Card(color: Colors.green,),onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (_) =>listaPage() ));}),),
          ],
        ),
      ),
    );
  }
}