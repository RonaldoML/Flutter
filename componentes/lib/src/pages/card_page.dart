import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ]
      ),
    );
  }
  _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Tarjeta 1'),
            subtitle: Text('Esta es una descripción de la tarjeta número 1, no te pases.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: (){}, 
                child: Text('Cancelar')
                ),
              FlatButton(
                onPressed: (){}, 
                child: Text('Ok')
                ),
            ],
          ),
        ],
      ),
    );
  }
  _cardTipo2(){
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            fit: BoxFit.cover,
            height: 250,
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('Assets/card_loading.gif'),
            image: NetworkImage('https://syndlab.com/files/view/5db9b150252346nbDR1gKP3OYNuwBhXsHJerdToc5I0SMLfk7qlv951730.jpeg')
          ),
          /*Image(
            image: NetworkImage('https://syndlab.com/files/view/5db9b150252346nbDR1gKP3OYNuwBhXsHJerdToc5I0SMLfk7qlv951730.jpeg'),
          ),*/
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('asdfsadfafasdf')
            )
        ]
      ),
    );
    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0)
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          ),
        ],
      ),
    );
  }
}