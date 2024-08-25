# Estrutura de Repetição
```dart
// FOR

for (int i = 0; i < 5; i++) {
    print(i);
}
```
```dart
// FOR in

var list = [1, 2, 3, 4, 5];
// var list = ['mateus', 'maria', 'miguel', 'marina', 'maiara'];

for (var element in list) {
    print(element);
}
```
```dart
// FOREACH

var list = [1, 2, 3, 4, 5];

list.forEach((element) {
    print(element);
});

// list.forEach((item) => print(item));
```
```dart
// WHILE

int aluno = 0;
while (aluno < 100) {
    print(aluno);
    aluno++;
}
```
```dart
// DO WHILE

int aluno = 100;
do {
    print(aluno);
    aluno++;
} while (aluno < 100);

```