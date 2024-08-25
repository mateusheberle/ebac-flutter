# Gerenciamento de Estado

Gerencia de estado é o **coração do seu aplicativo.**

### 2 ferramentas nativas 

## setState

    - atualiza o widget state sem perder itens necesários, 
    - sem perder o estado daquele momento
    - State passa de uma tela para outra
    - **reconstroi a tela com o método build()**
    - marcar os widgets que precisam ser atualizados
    - dev iniciante
    - AnimatedBuilder 
        - tem um setState para atualizar esse método

```dart
// não correr o risco de chamar o setState antes da tela ser criada
if(mounted){
	setState((){
	
	});
}
```

## ValueNotifier

    - valueNitifier herança do ChangeNotifier e implementa o 'Listenable'
    - gerencia de estado nativa do flutter
    - build não é chamado sempre
    - atualiza apenas o widget alterado
    - atualiza um widget sem rebuildar toda a tela

| método | conceito |
|:---:|:---|
| MaterialApp() | primeiro widget configurado no seu aplicativo |
| ValueNotifier | único valor |
| controller.dart | regras de negócio |
| ChangeNotitier | notifica os ouvintes |
| notifyListeners(); | todos os ouvintes são informados de alteração |
| addListener | adicionando um ouvinte |

