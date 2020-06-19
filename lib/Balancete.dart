import 'package:flutter/material.dart';
import 'TelaResultado.dart';
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

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  
  Widget build(BuildContext context) {


    return Scaffold(
      key: _scaffoldKey,
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
                coletaConstrucao,
                coletaPiedade,
                coletaViagem,
                coletaManutencao,
                coletaReuniao,
                coletaEspecial,
                SizedBox(height: 20),
                Text('Saidas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                campoTotalDepositado,
                campoTotalDespesa,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndResultScreen(context);
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }

  _navigateAndResultScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaResultado()));

    Scaffold.of(context)
      ..removeCurrentSnackBar();
  }
}
