# Variáveis

```dart
void main(List<String> args) {}
```

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
print("hello world!");
```
  </div>
  <div style="flex: 1;">

```
hello world!
```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
String nomeUsuario = 'Mateus Auler';
print(nomeUsuario);
```
  </div>
  <div style="flex: 1;">

```
Mateus Auler

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
int idade = 25;
print(idade);
```
  </div>
  <div style="flex: 1;">

```
25

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
bool programador = true;
print(programador);
```
  </div>
  <div style="flex: 1;">

```
true

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
double altura = 1.73;
print(altura);
```
  </div>
  <div style="flex: 1;">

```
1.73

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
List<String> listaA = ['A', 'B', 'C'];
print(listaA);
```
  </div>
  <div style="flex: 1;">

```
[A, B, C]


```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
listaA.add('D');
print(listaA);
```
  </div>
  <div style="flex: 1;">

```
[A, B, C, D]

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
listaA.insert(1, 'X');
print(listaA);
```
  </div>
  <div style="flex: 1;">

```
[A, X, B, C, D]

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
listaA.removeAt(1);
print(listaA);
```
  </div>
  <div style="flex: 1;">

```
[A, B, C, D]

```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
// Map<String, dynamic> mapa = {};
Map<String, dynamic> mapa = {
'nomeAluno': 'Mateus',
'idadeAluno': 25,
'alturaAluno': 1.70,
};
print(mapa);
print(mapa['nomeAluno']);
print(mapa['nomeAlu']);
```
  </div>
  <div style="flex: 1;">

```
{nomeAluno: Mateus, idadeAluno: 25, alturaAluno: 1.7}

Mateus

null



```
  </div>
</div>

<div style="display: flex; justify-content: space-around;">
  <div style="flex: 1;">

```dart
Map<String, dynamic> mapa2 = {
'nomeAluno': 'Mateus',
'idadeAluno': 25,
'alturaAluno': 1.70,
'listB': {'valorA': true, 'valorB': 123}
};
print(mapa2);
print(mapa2['listB']['valorA']);
mapa2.putIfAbsent('nacionalidade', () => 'brasileiro');
print(mapa2);
```
  </div>
  <div style="flex: 1;">

```
{nomeAluno: Mateus, idadeAluno: 25, alturaAluno: 1.7, listB: {valorA: true, valorB: 123}}

true

{nomeAluno: Mateus, idadeAluno: 25, alturaAluno: 1.7, listB: {valorA: true, valorB: 123}, nacionalidade: brasileiro}


```
  </div>
</div>























