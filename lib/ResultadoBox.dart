import 'package:flutter/material.dart';

class ResultadoBox extends StatelessWidget {
  num _valor;
  ResultadoBox(this._valor);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 12, right: 12, bottom: 5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        controller: TextEditingController(text: "R\$ ${_valor.toString()}"),
      ),
    );
  }
}
