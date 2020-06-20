import 'package:flutter/material.dart';
import 'TelaResultado.dart';
import 'ColetaBox.dart';
import 'Calculo.dart';
import 'ConverteParametro.dart';

class Balancete extends StatefulWidget {
  @override
  _BalanceteState createState() => _BalanceteState();
}

class _BalanceteState extends State<Balancete> {
  @override
  Widget build(BuildContext context) {
    final _coletaConstrucao = ColetaBox("Construcao");
    final _coletaPiedade = ColetaBox("Piedade");
    final _coletaViagem = ColetaBox("Viagem");
    final _coletaManutencao = ColetaBox("Manutencao");
    final _coletaReuniao = ColetaBox("Reuniao");
    final _coletaEspecial = ColetaBox("Especial");
    final _campoTotalDepositado = ColetaBox("Soma dos Depositos");
    final _campoTotalDespesa = ColetaBox("Soma das Despesas");

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
          Calculo calculo = Calculo(
              ConverteParametro.converteStringMascaradaParaDouble(
                  _coletaConstrucao.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _coletaPiedade.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _coletaViagem.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _coletaManutencao.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _coletaReuniao.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _coletaEspecial.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _campoTotalDepositado.controller.text),
              ConverteParametro.converteStringMascaradaParaDouble(
                  _campoTotalDespesa.controller.text));

          Navigator.push(
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
        },
        child: Icon(Icons.description),
      ),
    );
  }
}
