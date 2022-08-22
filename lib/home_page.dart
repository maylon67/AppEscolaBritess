import 'package:app_escola_bites/app_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(child:
      SingleChildScrollView(
child: Container(
  height: altura(context),
  width: largura(context),
 color: Color.fromARGB(255, 178, 44, 44), 
 child: Stack(
  children: [

  //  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
    Column(
      // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 15),child: Card(
                      
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),),
                    
                  ],
    ),
  ],
 ),
)
     ),
     ),
    );
  }
}