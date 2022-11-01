import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:app_escola_bites/tile_mov_banco.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listaSegundaPage extends StatefulWidget {
 // const listaSegundaPage({Key? key}) : super(key: key);

 listaSegundaPage(this.listMovBanco);
 List<Movimento> listMovBanco;

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
        title: Text('Extrato Bancario'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, indice){
              //USAR O LIST<MOVCAIXA> RECEBIDO POR PARAMETRO
            return TileMovBanco(widget.listMovBanco[indice]);
          },
          // separatorBuilder: (_, __) => Divider(
          //   color: corPadrao2,
          //   height: 30,
          //   thickness: 1.5,
          // ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.listMovBanco.length,
          ),
        ),
      ),
    );
  }
}
