## Button Style

### kDebugMode 
    variável global se o app está sendo executado em modo de depuração ou não
    true - depuração
    false - produção

```dart
if (kReleaseMode) {
    debugPrint = (String? message, {int? wrapWidth}) {
        print('Modo DEBUG');
    };
}

onPressed: () {
    debugPrint('ebac');
},
//debugPrint: imprimir mensagens no console durante o desenvolvimento
```
```dart
MaterialStateProperty.all<Color>(Colors.red)
```
    definir propriedades que variam com base no estado do widget

    - MaterialState.pressed: botão pressionado
    - MaterialState.hovered: cursor do mouse no botão
    - MaterialState.focused: botão está em foco
    - MaterialState.all: estado padrão (não pressionado, nem foco)        