# Programa em Dart

### Entrada de dados pelo usuário

```dart
import 'dart:io';

void main() {
    stdout.write('Qual é o seu nome?');
    print('\n');
    String? nome = stdin.readLineSync();
    print('\n');

    stdout.write('Qual é a sua idade?');
    print('\n');
    int idade = int.parse(stdin.readLineSync()!);
    print('\n');
    stdout.write('O nome digitado é: $nome, A idade digitada é: $idade');
    print('\n');
}
```