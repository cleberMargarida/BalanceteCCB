import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MaterialApp(
      home: Balancete(),
    ));

class ColetaBox extends StatelessWidget {
  
  String coletaNome;
  
  ColetaBox(String coletaNome) {
    this.coletaNome = coletaNome;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6, left: 6, right: 6, bottom: 2),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: coletaNome,
        ),
        controller: MoneyMaskedTextController(decimalSeparator: '.', 
        thousandSeparator: ',', 
        leftSymbol:'R\$ ' ),
      ),
    );
  }
}

class Balancete extends StatelessWidget {
  
  var campoSaldoMesAnterior = ColetaBox("Saldo Mes Anterior");
  var coletaConstrucao = ColetaBox("Construcao");
  var coletaPiedade = ColetaBox("Piedade");
  var coletaViagem = ColetaBox("Viagem");
  var coletaManutencao = ColetaBox("Manutencao");
  var coletaReuniao = ColetaBox("Reuniao");
  var coletaEspecial = ColetaBox("Especial");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balancete'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 18.0,right: 18, left: 18),
        child: Center(
          child: Column(
            children: <Widget>[
              campoSaldoMesAnterior,
              coletaConstrucao,
              coletaPiedade,
              coletaViagem,
              coletaManutencao,
              coletaReuniao,
              coletaEspecial,
            ],
          ),
        ),
      ),
    );
  }
}
