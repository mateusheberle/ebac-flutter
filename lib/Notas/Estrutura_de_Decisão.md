# Estrutura de Decisão

```dart
final double salario = 100.00;

if (salario > 100) {
    print("Maior que 100");
} else if (salario == 100) {
    print("Igual a 100");
} else {
    print("Menor que 100");
}
```

```dart
var salarioInteiro = salario.toInt();
print(salarioInteiro);
print(salarioInteiro.runtimeType);

switch (salarioInteiro) {
    case 100:
        print("é 100");
        break;
    case 90:
        print("é 90");
        break;
    case 80:
        print("é 80");
        break;
    case 70:
        print("é 70");
        break;
    default:
}
```
```dart
switch (salarioInteiro) {
    case 100:
    case 90:
    case 80:
      print("Seu salário está entre 80 e 100");
      break;
    default:
      print('Não é um valor válido');
  }
```
```dart
var carro = 'hatch';

  switch (carro) {
    case 'hatch':
        print("O carro é hatch");
        continue tambemAutomatico;
    case 'suv':
        print("O carro é SUV");
        break;
    case 'sedan':
        print("O carro é Sedan");
        continue tambemManual;
    tambemAutomatico:
    case 'tambemAutomatico':
        print("Câmbio automático");
        break;
    tambemManual:
    case 'tambemManual':
        print("Câmbio manual");
        break;
    default:
        print('Câmbio não definido');
  }
```
