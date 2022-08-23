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
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        children: [
          Card(
            color: Colors.white,
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
          )
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
