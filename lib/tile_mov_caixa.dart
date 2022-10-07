import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:flutter/material.dart';

class TileMovimentosCaixa extends StatefulWidget {
 // const TileMovCaixa({ Key? key }) : super(key: key);

  late MovCaixa movCaixa;
TileMovimentosCaixa(MovCaixa this.movCaixa);

  @override
  State<TileMovimentosCaixa> createState() => _TileMovimentosCaixaState();

  _TileMovimentosCaixaState() {}
}

class _TileMovCaixaState extends State<TileMovimentosCaixa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Text(widget.movCaixa.data.toString()),
    );
  }
}