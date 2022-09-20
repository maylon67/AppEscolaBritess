import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listaSegundaPage extends StatefulWidget {
  const listaSegundaPage({Key? key}) : super(key: key);

  @override
  State<listaSegundaPage> createState() => _listaSegundaPageState();
}

class _listaSegundaPageState extends State<listaSegundaPage> {
  ScrollController controleLista = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text(
          'Extrato Bancario',
          style: GoogleFonts.rubikMonoOne(fontSize: 21),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        backgroundColor: corPadraoApp,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        'Data',
                        style: GoogleFonts.antonio(
                          color: corPadraoApp,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1.5,
                      ),
                    ),
                    Text(
                      'Operação',
                      style: GoogleFonts.antonio(
                        fontSize: 22,
                        color: corPadraoApp,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1.5,
                      ),
                    ),
                    Text(
                      'Credito',
                      style: GoogleFonts.antonio(
                        fontSize: 22,
                        color: corPadraoApp,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 37),
                      child: Text(
                        'Débito',
                        style: GoogleFonts.antonio(
                          fontSize: 22,
                          color: corPadraoApp,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.black,
                  height: 0,
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '12/05/98',
                      style: GoogleFonts.antonio(
                        fontSize: 20,
                        color: corPadraoApp,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                    ),
                    Text(
                      'Mensalidade',
                      style: GoogleFonts.antonio(
                        fontSize: 20,
                        color: corPadraoApp,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2,
                      ),
                    ),
                    Text(
                      'Tipo = D',
                      style: GoogleFonts.antonio(
                        fontSize: 20,
                        color: corPadraoApp,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2,
                      ),
                    ),
                    Text(
                      'Tipo = C',
                      style: GoogleFonts.antonio(
                        fontSize: 20,
                        color: corPadraoApp,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 0,
                  color: Colors.black,
                  thickness: 1.5,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 10))
                  ],
                ),
                Divider(
                  height: 0,
                  thickness: 1.5,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                Divider(
                  height: 0,
                  thickness: 1.5,
                  color: Colors.black,
                ),
               Row(
                 children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                   Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                           Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                 ],
               ),
                Divider(
                  height: 0,
                  thickness: 1.5,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                           Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                  ],
                ),
                Divider(
                  height: 0,
                  thickness: 1.5,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                Divider(color: Colors.black,height: 0,thickness: 1.5,),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                Divider(height: 0,thickness:1.5,color: Colors.black),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                Divider(color: Colors.black,thickness: 1.5,height: 0,),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
                Divider(color: Colors.black,height: 0,thickness: 1.5,),
                 Divider(height: 0,color: Colors.black,thickness: 1.5,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 38.5)),
                    Container(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 1.5,
                            color: Colors.black,
                            ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 44)),
                           Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                       Padding(padding: EdgeInsets.symmetric(horizontal: 40.5)),
                       Container(
                      height: 50,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Colors.black,
                        ),
                       ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
