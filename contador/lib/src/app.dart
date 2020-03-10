import 'package:flutter/material.dart';
//Escrito
import 'package:contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Center(
        child: ContadorPage(), 
      ),    
    );
  }
}