import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:app_escola_bites/saldo_caixa_card.dart';
import 'package:app_escola_bites/tile_mov_caixa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_escola_bites/home_page.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

class ListaPage extends StatelessWidget {
//  const ListaPage({Key? key}) : super(key: key);

  ListaPage(this.movCaixa,);
 List<MovCaixa> movCaixa;
  //PRECISA RECEBER UM LIST<MOVCAIXA> AQUI
  //EXEMPLO
  // LOGIN_PAGE -> HOME_PAGE

  ScrollController listaControle = ScrollController();

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: Text('Extrato do Aluno'),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           // TileMovimentosCaixa(movCaixa.first),
            SaldoCaixaCard(movCaixa),
          ],
        ),
      ),
    );
  }
}
