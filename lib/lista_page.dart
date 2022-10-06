import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:app_escola_bites/tile_mov_caixa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_escola_bites/home_page.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class listaPage extends StatefulWidget {
  const listaPage({Key? key}) : super(key: key);

  @override
  State<listaPage> createState() => _listaPageState();
}

class _listaPageState extends State<listaPage> {
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
      body: ListView.separated(itemBuilder: (context, indice){
return TileMovimentosCaixa(listMovCaixa[indice]);
      },
      shrinkWrap: true,
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
