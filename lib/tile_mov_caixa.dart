import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TileMovimentosCaixa extends StatefulWidget {
 // const TileMovCaixa({ Key? key }) : super(key: key);
   MovCaixa movCaixa;
   TileMovimentosCaixa(this.movCaixa);

  @override
  State<TileMovimentosCaixa> createState() => _TileMovCaixaState();


}

class _TileMovCaixaState extends State<TileMovimentosCaixa> {
  static var f = NumberFormat("##,###,##0.00", "pt-br");
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                widget.movCaixa.data,
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  thickness: 1.5,
                )
            ],
          ),
          Container(
            height: 50,
            child: VerticalDivider(
              color: Colors.black,
              thickness: 1.5,
            ),
          ),
          Column(
            children: [
              Text(widget.movCaixa.operacao, style: TextStyle(
                  color: Colors.black, 
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              ),
              Divider(
                color: Colors.black,
                height: 0,
                thickness: 1.5,
              )
            ],
          ),
           Container(
            height: 50,
            child: VerticalDivider(
              color: Colors.black,
              thickness: 1.5,
            ),
          ),
          Column(
            children: [
              Text(widget.movCaixa.tipo, style: TextStyle(
                  color: Colors.black, 
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              ),
              Divider(
                color: Colors.black,
                height: 0,
                thickness: 1.5,
              )
            ],
          ),
           Container(
            height: 50,
            child: VerticalDivider(
              color: Colors.black,
              thickness: 1.5,
            ),
          ),
          Column(
            children: [
              Text(f.format(widget.movCaixa.valor), style: TextStyle(
                  color: Colors.black, 
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.end,
              ),
              Divider(
                color: Colors.black,
                height: 0,
                thickness: 1.5,
              )
            ],
          ),
        ],
      ),
    );
  }
}
