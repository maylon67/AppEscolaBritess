import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';

class listaPage extends StatefulWidget {
  const listaPage({ Key? key }) : super(key: key);

  @override
  State<listaPage> createState() => _listaPageState();
}

class _listaPageState extends State<listaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Primeira Lista'),
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
