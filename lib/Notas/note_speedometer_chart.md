mateusheberle: o que o pacote "speedometer_chart" faz?

```sh
flutter pub add speedometer_chart
```

GitHub Copilot: O pacote `speedometer_chart` é utilizado para criar gráficos de velocímetro (ou gráficos de medidor) em aplicativos Flutter. Esses gráficos são úteis para representar valores em uma escala, como a velocidade de um veículo, a porcentagem de conclusão de uma tarefa, ou qualquer outra métrica que possa ser visualizada em um formato de medidor.

```dart
 SpeedometerChart(
    value: _dbLevel > 60 ? 60 : _dbLevel,
    valueWidget: Text(
        _dbLevel.round().toString(),
        style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
        ),
    ),
    hasIconPointer: false,
    pointerColor: Colors.black,
    graphColor: const [Colors.green, Colors.yellow, Colors.red],
    minWidget: const Text("0"),
    maxWidget: const Text("60"),
    maxValue: 60,
    minValue: 0,
),
```

Para mais detalhes, você pode consultar a documentação oficial do pacote no [pub.dev](https://pub.dev/packages/speedometer_chart).
