import 'package:Balancete/Balancete.dart';
import 'package:flutter/material.dart';
import 'ResultadoBox.dart';

class TelaResultado extends StatelessWidget {
  @override
  double _resultadoTransferencia;
  double _resultadoDepositoDasColetas;
  double _resultadoTotalDepositado;
  double _resultadoComplementacao;
  double _resultadoDespesas;
  double _resultadoTotalGeral;

  TelaResultado(
      this._resultadoTransferencia,
      this._resultadoDepositoDasColetas,
      this._resultadoTotalDepositado,
      this._resultadoComplementacao,
      this._resultadoDespesas,
      this._resultadoTotalGeral);

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
                ResultadoBox(_resultadoTransferencia),
                SizedBox(height: 10),
                Text('Deposito das Coletas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoTotalDepositado),
                SizedBox(height: 10),
                Text('Total Depositado',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoTotalDepositado),
                SizedBox(height: 10),
                Text('Complementacao',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoComplementacao),
                SizedBox(height: 10),
                Text('Despesas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoDespesas),
                SizedBox(height: 10),
                Text('Total Geral',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoTotalGeral),
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
