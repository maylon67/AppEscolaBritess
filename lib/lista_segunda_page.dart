import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/ext_banco_card.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:app_escola_bites/tile_mov_banco.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListaSegundaPage extends StatelessWidget {
 // const listaSegundaPage({Key? key}) : super(key: key);

 ListaSegundaPage(this.movBanco);
 List<Movimento> movBanco;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: Text('Extrato Bancario'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           // TileMovBanco(movBanco.first),
            ExtratoBancoCard(movBanco),
          ],
        ),
      ),
    );
  }
}
