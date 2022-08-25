import 'package:app_escola_bites/lista_page.dart';
import 'package:app_escola_bites/lista_segunda_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:app_escola_bites/app_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 247, 247),
      appBar: AppBar(
        title: Text('Seja bem vindo Usuario!',style: GoogleFonts.oswald(fontSize: 25),),
        backgroundColor: Color(0xFFF52314),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ 
              GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  ),
                  shrinkWrap: true,
                  physics:PageScrollPhysics(),
                children: [ 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 3),
                    child: GestureDetector(
                    child: Card(
                      color: Colors.white,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: corPadraoApp,width: 1.9)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          children: [
                            Center(
                              child: Text('Seu Saldo',
                              style: GoogleFonts.openSans(
                                color: corPadraoApp,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              ),
                            ),

                            Center(
                              child: Padding(
                                padding:  EdgeInsets.symmetric(vertical: 0),
                                child: Text('R\$ 98.996,98',style: GoogleFonts.oswald(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                              ),
                            ),
                            SizedBox(height: 15),
                            Divider(color: Colors.black,thickness: 1.5,),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                               Text('Tipo',style: GoogleFonts.oswald(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                               Text('Objetivo',style: GoogleFonts.oswald(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                               Text('Arrecadado',style: GoogleFonts.oswald(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                               Text('%Atingido',style: GoogleFonts.oswald(color:Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                          ],
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 1.5,
                          ),
                          ],
                        ),
                      ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => listaPage()));
                        }),
                  ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 1),
                 child: GestureDetector(
                   child: Card(
                     color: Colors.white,
                     elevation: 6,
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: corPadraoApp,width: 1.9),
                     ),
                     child: Column(
                       children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 20),),
                        
                        Center(child: Text('Saldo Bancario',style: GoogleFonts.oswald(color: corPadraoApp,fontSize: 25),),),
                        Padding(padding: EdgeInsets.symmetric(vertical: 25)),
                        Center(child: Text('R\$ 99.999,99',style: GoogleFonts.oswald(fontSize: 42,color: Colors.black),))

                       ],
                     ),
                     ),
                     onTap:(){
                       Navigator.push(context, MaterialPageRoute(builder: (context) =>listaSegundaPage()));
                       }),
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