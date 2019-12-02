import 'package:flutter/material.dart';
import 'package:recebe_parametros/total.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  TextEditingController total = TextEditingController();
  String resultado;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.camera),
        title: Text("Retornando dados de uma Janela"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: total,
              decoration: InputDecoration(labelText: "Total"),
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Buscar Total"),
              onPressed: () async {
                resultado = await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Total()),
                            );

                setState(() {
                  total.text = resultado;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
