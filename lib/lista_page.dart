import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listaPage extends StatefulWidget {
  const listaPage({ Key? key }) : super(key: key);

  @override
  State<listaPage> createState() => _listaPageState();
}

class _listaPageState extends State<listaPage> {
  ScrollController listaControle = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('saldo bancario'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: ListView.separated(
        controller: listaControle,
        itemCount: 1,
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 1.5,
          height: 30,
        ),
        itemBuilder: ( (context, index) {
          return ListTile(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34),
side: BorderSide(color: corPadraoApp,width: 1.5),
),
title: Text('Seu Saldo', style: GoogleFonts.archivo(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
onTap: (){},
contentPadding: EdgeInsets.symmetric(horizontal: 25),
autofocus: true,
enabled: false,
selectedColor: corPadraoApp,
trailing: Text('Saldo Bancario'),
          );
        }),
        shrinkWrap: true, 
      ),
    );
  }
}