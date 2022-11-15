import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/models/movimento_caixa_models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SaldoCaixaCard extends StatelessWidget {
 // const ExtratoBancoCard({ Key? key }) : super(key: key);

 SaldoCaixaCard(this.movCaixa);

  List<MovCaixa> movCaixa;

  static var f = NumberFormat("##,###,##0.00", "pt-br");
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Column(
          children: [
            Text(
              "EXTRATO DO ALUNO",
              style: TextStyle(
                  color: corPadraoApp,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SingleChildScrollView(
             // scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: FixedColumnWidth(110),
                    1: FixedColumnWidth(112),
                    2: FixedColumnWidth(90),
                    3: FixedColumnWidth(110),
                  },
                  children: [
                    createHeadLine(
                        "Data;Operação;Tipo;Valor"),
                    for (MovCaixa i in movCaixa)
                      createTable(
                          "${i.data};${i.operacao};${i.tipo};${f.format(i.valor)}"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TableRow createHeadLine(String headlines) {
    return TableRow(
      children: headlines
          .split(';')
          .map(
            (names) => Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    names,
                    style: TextStyle(
                        color: corPadraoApp, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  color: corPadraoApp,
                  thickness: 2,
                ),
              ],
            ),
          )
          .toList(),
    );
}
createTable(String listcontents) {
    return TableRow(
        children: listcontents
            .split(';')
            .map(
              (contents) => Column(
                children: [
                  Container(
                    height: 30,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: Text(
                      contents,
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(color: corPadraoApp),
                ],
              ),
            )
            .toList());
  }
}
