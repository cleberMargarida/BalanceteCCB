class ConverteParametro {
  static double converteStringMascaradaParaDouble(String label) {
    String noMaskLabel = "";
    for (int i = 3; i < label.length; i++) {
      noMaskLabel = noMaskLabel + label[i];
    }
    return double.parse(noMaskLabel);
  }
}