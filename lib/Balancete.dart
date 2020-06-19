import 'package:flutter/material.dart';
import 'TelaResultado.dart';
import 'Calculo.dart';
import 'ColetaBox.dart';

class Balancete extends StatelessWidget {
  var _coletaConstrucao = ColetaBox("Construcao");
  var _coletaPiedade = ColetaBox("Piedade");
  var _coletaViagem = ColetaBox("Viagem");
  var _coletaManutencao = ColetaBox("Manutencao");
  var _coletaReuniao = ColetaBox("Reuniao");
  var _coletaEspecial = ColetaBox("Especial");
  var _campoTotalDepositado = ColetaBox("Soma dos Depositos");
  var _campoTotalDespesa = ColetaBox("Soma das Despesas");

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
                SizedBox(height: 20),
                Text('Entradas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _coletaConstrucao,
                _coletaPiedade,
                _coletaViagem,
                _coletaManutencao,
                _coletaReuniao,
                _coletaEspecial,
                SizedBox(height: 20),
                Text('Saidas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _campoTotalDepositado,
                _campoTotalDespesa,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndResultScreen(context);
          _coletaConstrucao.controller.clear();
          _coletaPiedade.controller.clear();
          _coletaViagem.controller.clear();
          _coletaManutencao.controller.clear();
          _coletaReuniao.controller.clear();
          _coletaEspecial.controller.clear();
        },
        child: Icon(Icons.description),
      ),
    );
  }

  Calculo calculo = Calculo(2, 2, 2, 2, 2, 2, 2, 2
      // double.parse(_coletaConstrucao.controller.text),
      // double.parse(_coletaPiedade.controller.text),
      // double.parse(_coletaViagem.controller.text),
      // double.parse(_coletaManutencao.controller.text),
      // double.parse(_coletaReuniao.controller.text),
      // double.parse(_coletaEspecial.controller.text),
      // double.parse(_totalDepositado.controller.text),
      // double.parse(_totalDespesa)
      );

  _navigateAndResultScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaResultado(
                  calculo.CalculaTransferencia(),
                  calculo.DepositoDasColetas(),
                  calculo.CalculaTotalDepositado(),
                  calculo.CalculaComplementacao(),
                  calculo.CalculaTotalDespesa(),
                  calculo.CalculaTotalGeral(),
                )));

    Scaffold.of(context)..removeCurrentSnackBar();
  }
}
