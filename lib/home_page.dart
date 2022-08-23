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
      backgroundColor: Colors.white,
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
                  physics: NeverScrollableScrollPhysics(),
                children: [ 
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 1),
                    child: GestureDetector(
                    child: Card(
                      color: Colors.white,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
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
                      borderRadius: BorderRadius.circular(15)
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
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}