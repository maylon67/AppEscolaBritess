import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:app_escola_bites/tile_mov_caixa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_escola_bites/home_page.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({Key? key}) : super(key: key);

  //PRECISA RECEBER UM LIST<MOVCAIXA> AQUI
  //EXEMPLO
  // LOGIN_PAGE -> HOME_PAGE

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController listaControle = ScrollController();
   List<MovCaixa> listMovCaixa = [];
  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: Text('Saldo Bancario'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, indice){
          //USAR O LIST<MOVCAIXA> RECEBIDO POR PARAMETRO
      return TileMovimentosCaixa(listMovCaixa[indice]);
      },
      separatorBuilder: (_, __) => Divider(
        color: corPadrao2,
        height: 30,
        thickness: 1.5,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: listMovCaixa.length,
      ),
    );
  }
}
