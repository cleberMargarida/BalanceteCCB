import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter/material.dart';

class ColetaBox extends StatelessWidget {
  String _coletaNome;
  ColetaBox(this._coletaNome);

  TextEditingController controller = MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',', leftSymbol: 'R\$ ');

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 12, right: 12, bottom: 5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: _coletaNome,
        ),
        controller: controller,
      ),
    );
  }
}