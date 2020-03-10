
import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[  
          Container(
            margin: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('sl'),
              backgroundColor: Colors.tealAccent,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('Assets/card_loading.gif'), 
          image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}