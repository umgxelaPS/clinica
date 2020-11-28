import 'package:flutter/material.dart';

class Vendedores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Registro de citas'),
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Nombre",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "telefono",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "correo",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Cita'),
            subtitle: const Text('fecha: 2020-11-28 08:20'),
          ),
          new RaisedButton(
              color: Colors.indigo,
              textColor: Colors.white,
              child: Text(
                "Guardar",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
              }),
        ],
      ),
    );
  }
}
