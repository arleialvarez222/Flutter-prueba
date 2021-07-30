import 'package:flutter/material.dart';


class AvatartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg'),
              radius: 30.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }
}