import 'package:flutter/material.dart';
import 'ColetaBox.dart';

class TelaResultado extends StatelessWidget {
  @override

  var coletabox = ColetaBox("some");


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado")),
      body: ListView(
          padding: EdgeInsets.only(top: 18.0, right: 6, left: 6),
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  coletabox,
                ],
              ),
            ),
          ],
        ),
    );
  }
}