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

  TextEditingController value = MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',', leftSymbol: 'R\$ ');

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 12, right: 12, bottom: 5),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: coletaNome,
        ),
        controller: value,
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
  var campoTotalDepositado = ColetaBox("Total Depositado");
  var campoTotalDespesa = ColetaBox("Total de Despesas");

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balancete'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 18.0, right: 6, left: 6),
        children: [
          Center(
            child: Column(
              children: <Widget>[
                campoSaldoMesAnterior,
                coletaConstrucao,
                coletaPiedade,
                coletaViagem,
                coletaManutencao,
                coletaReuniao,
                coletaEspecial,
                campoTotalDepositado,
                campoTotalDespesa,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(''),
              );
            },
          );
        },
        child: Icon(Icons.),
      ),
    );
  }
}
