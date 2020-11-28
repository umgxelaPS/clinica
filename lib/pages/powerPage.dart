import 'package:flutter/material.dart';

class Power extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: new AppBar(
          title: Text('Ultimo registro ingresado'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Cliente: Juan Carlos'),
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: Text('fecha: 2020-11-28 08:20'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telefono: 55158483'),
            ),
          ],
        ),
    );
  }
}