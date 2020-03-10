import 'package:flutter/material.dart';
 //Escritos
import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentesl App',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settinngs){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
          );
      },  
    );
  }
}