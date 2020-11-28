import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pacientes/pages/VendedoresPage.dart';
import 'package:pacientes/pages/menu.dart';
import 'package:pacientes/pages/powerPage.dart';

void main() => runApp(new MyApp());

String username='';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login PHP My Admin',     
      home: LoginPage(),
      routes: <String,WidgetBuilder>{
        '/powerPage': (BuildContext context)=> new  Power(),
        '/bodegaPage': (BuildContext context)=> new Vendedores(),
        '/menu': (BuildContext context)=> new Menu(),
        '/LoginPage:': (BuildContext context)=> LoginPage(),
      },
    );
  }
}
class LoginPage extends StatefulWidget{
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

  String mensaje = '';
  
  // ignore: missing_return
  Future<List>  login() async {
    final response = await http.post(
        "http://ec2-54-145-19-210.compute-1.amazonaws.com/ventas/login.php", body: {
      "username": controllerUser.text,
      "password": controllerPass.text,
    });

    var datauser = json.decode(response.body);

    if (datauser[0]['nivel'=='admin']){
      Navigator.pushReplacementNamed(context, '/powerPAge');
    } else if (datauser[0]['nivel']=='ventas'){
      Navigator.pushReplacementNamed(context, '/vendedoresPage');
    }
    setState(() {
      username = datauser[0]['username'];
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login citas medicas "),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Usuario",style: TextStyle(fontSize: 18.0),),
              TextField(
                controller: controllerUser,
                decoration: InputDecoration(
                    hintText: 'Usuario'
                ),
              ),
              Text("Contraseña",style: TextStyle(fontSize: 18.0),),
              TextField(
                controller: controllerPass,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Contraseña'
                ),
              ),

              RaisedButton(
                child: Text("Login"),
                onPressed: (){
                  login();
                  Navigator.pushReplacementNamed(context, '/menu');
                },
              ),

              Text(mensaje,style: TextStyle(fontSize: 20.0,color: Colors.red),)


            ],
          ),
        ),
      ),
    );
  }
}
