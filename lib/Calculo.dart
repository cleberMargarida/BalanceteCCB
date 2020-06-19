class Calculo {
  double _coletaConstrucao;
  double _coletaPiedade;
  double _coletaViagem;
  double _coletaManutencao;
  double _coletaReuniao;
  double _coletaEspecial;
  double _totalDepositado;
  double _totalDespesa;

  Calculo(
      this._coletaConstrucao,
      this._coletaPiedade,
      this._coletaViagem,
      this._coletaManutencao,
      this._coletaReuniao,
      this._coletaEspecial,
      this._totalDepositado,
      this._totalDespesa);

  double CalculaTotalGeral() {
    return _coletaConstrucao +
        _coletaPiedade +
        _coletaViagem +
        _coletaReuniao +
        _coletaEspecial +
        _coletaManutencao;
  }

  double CalculaTransferencia() {
    return _coletaManutencao - _totalDespesa;
  }

  double DepositoDasColetas() {
    return CalculaTotalGeral() - _coletaManutencao;
  }

  double CalculaTotalDepositado() =>  _totalDepositado;

  double CalculaTotalDespesa() => _totalDespesa;
  
  double CalculaComplementacao() {
    return CalculaTotalGeral() - CalculaTotalDepositado() - CalculaTotalDespesa();
  }
}
