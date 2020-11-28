import 'package:flutter/material.dart';
import 'package:pacientes/main.dart';

class Menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implementar botones en flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: Text(
                          "Listar",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/powerPage');
                        }),
                    new RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: Text(
                          "Agendar",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/bodegaPage');
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        child: Text(
                          "Salir",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/LoginPage');
                        }),
                  ],
                )

              ],
            ),
          )),
    );
  }
}