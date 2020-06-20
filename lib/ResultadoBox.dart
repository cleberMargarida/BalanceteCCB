import 'package:flutter/material.dart';

class ResultadoBox extends StatelessWidget {
  num _valor;
  String _label;
  ResultadoBox(this._valor,this._label);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 12, right: 12, bottom: 5),
      child: TextFormField(
        enabled: false,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: _label,
          border: OutlineInputBorder(),
        ),
        controller: TextEditingController(text: "R\$ ${_valor.toString()}"),
      ),
    );
  }
}
