import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Segunda Lista'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: ListView.separated(
        controller: controleLista,
        itemCount: 1,
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 1.5,
          height: 30,
        ),
        itemBuilder: ( (context, index) {
          return ListTile(
               
          );
        }),
        shrinkWrap: true, 
      ),
    );
  }
}
