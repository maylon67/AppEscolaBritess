import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:flutter/material.dart';

class TileMovimentosCaixa extends StatefulWidget {
 // const TileMovCaixa({ Key? key }) : super(key: key);
   MovCaixa movCaixa;
   TileMovimentosCaixa(this.movCaixa);

  @override
  State<TileMovimentosCaixa> createState() => _TileMovCaixaState();


}

class _TileMovCaixaState extends State<TileMovimentosCaixa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                widget.movCaixa.data,
                style: TextStyle(),
                ),
            ],
          ),
          Column(
            children: [
              Text(widget.movCaixa.operacao, style: TextStyle(),)
            ],
          ),
          Column(
            children: [
              Text(widget.movCaixa.tipo)
            ],
          ),
          Column(
            children: [
              Text(widget.movCaixa.valor.toString())
            ],
          )
        ],
      ),
    );
  }
}
