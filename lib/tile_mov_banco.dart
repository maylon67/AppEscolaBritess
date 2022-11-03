import 'package:app_escola_bites/app_config.dart';
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
    return InkWell(
      child: Card(
        margin: EdgeInsets.symmetric(vertical:10, horizontal: 18),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
        elevation: 6,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 7),
                      width: 109,
                      child: Column(
                        children: [
                                  Text('Data', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black),),
                                  Text(widget.movBanco.data.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 16),),
                        ]
                                ),
                    ),
              Container(
                height: 57,
                child: VerticalDivider(
                  color: corPadraoApp, thickness: 1,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Column(
                    children: [
                    Text('Operação', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black,),),
                    Text(widget.movBanco.operacao.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              )
              
                ]
              ),
              Divider(
                height: 0,
                color: corPadraoApp, thickness: 1,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text('Tipo', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black),),
                          Text(widget.movBanco.tipo, textAlign: TextAlign.center, style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                height: 62,
                child: VerticalDivider(
                  color: corPadraoApp, thickness: 1,
                ),
              ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text('Valor BCO', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.black),),
                          Text(widget.movBanco.vlrmovbco.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
        ),
      ),
    );
  }
}
