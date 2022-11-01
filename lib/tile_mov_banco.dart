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
      width: 200,
     // color: Colors.transparent,
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
              Text(widget.movBanco.operacao, style: TextStyle(
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
              Text(widget.movBanco.tipo, style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(f.format(widget.movBanco.vlrmovbco), style: TextStyle(
                    color: Colors.black, 
                    fontSize: 16, 
                    fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
                ),
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