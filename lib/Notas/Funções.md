# Funções

```dart
void main() {
  print('Main');

  calculoSalario();
  calculoSalarioParametro(20);
  calculoUm();
  // double salario = calculoSalarioParametroRetorno(10);
  // print('salario: $salario');
  double salario = calculoSalarioParametroRetorno2(10, 'Mateus');
  print('salario: $salario');
}
```
```dart
// tipo do retorno
// nome
// parametro de entrada

// void - processar mas sem retorno
```
```dart
void calculoSalario() {
  print('processamento');
}

void calculoSalarioParametro(int codigoFuncionario) {
  print('processamento');
  print(codigoFuncionario * 50);
}

double calculoSalarioParametroRetorno(int codigoFuncionario) {
  double salario = codigoFuncionario * 50;
  print('processamento');
  print(salario);
  return salario;
}

double calculoSalarioParametroRetorno2(
    int codigoFuncionario, String nomeFuncionario) {
  double salario = codigoFuncionario * 50;
  print('processamento $codigoFuncionario');
  print('processamento $nomeFuncionario');
  print(salario);
  return salario;
}

double calculoSalarioParametroRetorno3([String nomeFuncionario = 'Auler']) {
  double salario = codigoFuncionario * 50;
  print('processamento $codigoFuncionario');
  print('processamento $nomeFuncionario');
  print(salario);
  return 0;
}

void calculoUm({double salario = 1.0}) {
  print(salario);
}
```