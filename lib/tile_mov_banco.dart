import 'package:app_escola_bites/models/movimento_models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TileMovBanco extends StatefulWidget {
  // const TileMovBanco({ Key? key }) : super(key: key);
  Movimento movBanco;
  TileMovBanco(this.movBanco);

  @override
  State<TileMovBanco> createState() => _TileMovBancoState();
}

class _TileMovBancoState extends State<TileMovBanco> {
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
                widget.movBanco.data,
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
                widget.movBanco.operacao,
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
                widget.movBanco.tipo,
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
                f.format(widget.movBanco.vlrmovbco),
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
