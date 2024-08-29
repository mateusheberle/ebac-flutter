## IMC

```dart
// elimina a memória usada
@override
void dispose() {
    imcController.pesoController.dispose();
    imcController.alturaController.dispose();
    super.dispose();
}
```
### Expanded: 
    expande seu filho para ocupar todo o espaço disponível em seu pai

### TextField: 
    entrada de texto

    - controller: controle o conteúdo
    - keyboardType: tipo de teclado
    - textInputAction: definir ação para botão Avançar/Concluído/Próximo no teclado virtual
    - maxLength: máximo de caracteres
    - onChanged: função chamada quando o texto é alterado
    - onSubmitted: função chamada com o botão de envio no teclado virtual
    - obscureText: ocultar texto inserido
    - decoration: style do textField
    - style: style do texto inserido

      allow - aceitar
      deny - recusar      

```dart
inputFormatters: [
    FilteringTextInputFormatter.allow(
        RegExp('[0-9,]'), // de 0 a 9 e virgula
    ),
    FilteringTextInputFormatter.deny(
        RegExp('[0-9,]'), // de 0 a 9 e virgula
        RegExp('[a-zA-Z]'), // todas as letras
    ),
    FilteringTextInputFormatter.digitsOnly
],
// labelText: 'Altura',
// icon: Icon(Icons.camera),
// prefix: Text('G-'),
// errorText: 'Erro',
// border: OutlineInputBorder(),
```

### ValueListenableBuilder: 
    reconstruir a interface com base na alteração

