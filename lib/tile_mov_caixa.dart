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
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              child: Text(
                widget.movCaixa.data,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 40,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            Container(
              height: 40,
              width: 65,
              child: Text(
                widget.movCaixa.operacao,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 40,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1.5,
              ),
            ),
            Container(
              height: 40,
              width: 20,
              child: Text(
                widget.movCaixa.tipo,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 40,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 1.5,
              ),
            ),
            Container(
              height: 30,
              width: 75,
              child: Text(
                f.format(widget.movCaixa.valor),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: Colors.black,
        )
      ],
    ));
  }
}
