import 'Balancete.dart';
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
                Text('Transferências',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoTransferencia,"Transf. Administracao"),

                SizedBox(height: 20),
                Text('Depositos',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoTotalDepositado,"Deposito das Coletas"),

                ResultadoBox(_resultadoTotalDepositado,'Total Depositado'),

                ResultadoBox(_resultadoComplementacao,"Complementacao"),

                SizedBox(height: 20),
                Text('Despesas',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoDespesas, "Despesas"),
                
                SizedBox(height: 20),
                Text('Total',
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
                ResultadoBox(_resultadoTotalGeral,"Total Geral"),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => Balancete()));
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
