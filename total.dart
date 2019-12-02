import 'package:flutter/material.dart';

class Total extends StatefulWidget {
  @override
  _TotalState createState() => _TotalState();
}

class _TotalState extends State<Total> {

  TextEditingController valorA = TextEditingController();
  TextEditingController valorB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preecha os campos :"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              controller: valorA,
              decoration: InputDecoration(labelText: "Valor A"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: valorB,
              decoration: InputDecoration(labelText: "Valor B"),
            ),
            RaisedButton(
              child: Text("Retornar Total A + B"),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: (){
                double resultado;
                resultado = double.parse(valorA.text)+double.parse(valorB.text);
                Navigator.pop(context, resultado.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
