import 'package:flutter/material.dart';
import 'ColetaBox.dart';


class Balancete extends StatelessWidget {

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
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
