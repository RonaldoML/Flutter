import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      //configurar las zonas horarias
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES'),
      ],
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