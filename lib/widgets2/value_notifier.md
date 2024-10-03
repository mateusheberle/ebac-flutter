### ValueNotifier
    - classe para criar objetos notificadores de mudanças de valor
    - atualizar interface do usuário

### ValueListenableBuilder 
    - observa as mudanças no valor de ValueNotifier e atualiza a interface automaticamente

```dart
ValueNotifier<int> _counter = ValueNotifier<int>(0);

ValueListenableBuilder<int>(
    valueListenable: _counter,
    builder: (context, value, child) {
        return Text(
            '$value',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        );
    },
),
```

### AnimatedBuilder 
    é um widget que permite construir animações de forma mais eficiente e limpa


Lembre-se de descartar o ValueNotifier quando ele não for mais necessário

```dart
@override
void dispose() {
  _counter.dispose();
  super.dispose();
}
```
```dart
class Controller {
  var counter = ValueNotifier(0);

  void incrementCounter() {
    counter.value++;
  }
}
```


### AnimatedBuilder X ValueListenableBuilder

    reconstruir partes específicas da interface

#### AnimatedBuilder:
    animar uma propriedade da interface, como posição, opacidade ou escala
    animações personalizadas ou aimação de Transform, Positioned e Opacity

#### ValueListenableBuilder:
    atualizar partes da interface que não são diretamente relacionadas a animações

### AnimatedBuilder X ValueListenableBuilder (ChatGPT)

- **ValueListenableBuilder**:
  - **Propósito**: É usado para reconstruir a UI quando um `ValueListenable` muda. `ValueListenable` pode ser qualquer tipo de valor que muda ao longo do tempo, como um valor de um `TextEditingController`, um `ValueNotifier`, etc.
  - **Funcionamento**: Você fornece um `ValueListenable` e um `builder`. Sempre que o valor escutado muda, o `builder` é chamado novamente para reconstruir a parte da UI que depende desse valor.
  - **Uso**: Ideal para casos em que você quer que a UI reaja a mudanças em um valor específico, sem necessidade de animações.

- **AnimatedBuilder**:
  - **Propósito**: É usado para criar animações complexas que necessitam de reconstrução de UI durante os frames da animação. Ele é otimizado para realizar animações, reduzindo a necessidade de reconstruir toda a árvore de widgets.
  - **Funcionamento**: Você fornece um `Animation` e um `builder`. O `AnimatedBuilder` escuta as mudanças na `Animation` e chama o `builder` a cada frame da animação, permitindo atualizar a UI com base no valor da animação.
  - **Uso**: Ideal para animações que envolvem mudanças contínuas nos valores de propriedades de widgets, como tamanho, cor, posição, etc.

- **Resumo**:
  - Use `ValueListenableBuilder` para reagir a mudanças em valores específicos e reconstruir a UI baseada nesses valores.
  - Use `AnimatedBuilder` para criar animações que necessitam de atualizações de UI durante os frames da animação, otimizando o desempenho ao evitar reconstruções desnecessárias da árvore de widgets.