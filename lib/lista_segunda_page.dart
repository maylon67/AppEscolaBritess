import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';

class listaSegundaPage extends StatefulWidget {
  const listaSegundaPage({ Key? key }) : super(key: key);

  @override
  State<listaSegundaPage> createState() => _listaSegundaPageState();
}

class _listaSegundaPageState extends State<listaSegundaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Segunda Lista'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: ListView()
    );
  }
}
