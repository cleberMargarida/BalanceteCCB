import 'package:Balancete/Balancete.dart';
import 'package:flutter/material.dart';
import 'ResultadoBox.dart';

class TelaResultado extends StatelessWidget {
  @override
  var _resultadoBoxTransferencia = ResultadoBox(3.25);
  var _resultadoBoxDepositoDasColetas = ResultadoBox(2.4);
  var _resultadoBoxTotalDepositado = ResultadoBox(3.5);
  var _resultadoBoxComplementacao = ResultadoBox(3.8);
  var _resultadoBoxDespesas = ResultadoBox(6.9);
  var _resultadoBoxTotalGeral = ResultadoBox(0.5);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 18.0, right: 6, left: 6),
        children: [
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Text('Transferencia para ADM',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _resultadoBoxTransferencia,
                SizedBox(height: 10),
                Text('Deposito das Coletas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _resultadoBoxDepositoDasColetas,
                SizedBox(height: 10),
                Text('Total Depositado',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _resultadoBoxTotalDepositado,
                SizedBox(height: 10),
                Text('Complementacao',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _resultadoBoxComplementacao,
                SizedBox(height: 10),
                Text('Despesas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _resultadoBoxDespesas,
                SizedBox(height: 10),
                Text('Total Geral',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                _resultadoBoxTotalGeral,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndResultScreen(context);
        },
        child: Icon(Icons.done),
      ),
    );
  }

  _navigateAndResultScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Balancete()));

    Scaffold.of(context)..removeCurrentSnackBar();
  }
}
