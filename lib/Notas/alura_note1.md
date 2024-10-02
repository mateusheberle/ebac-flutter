# Flutter

## Índice
1. [Parte 1 - Introdução](#parte-1---introdução)
    1. [Propósito do Flutter](#propósito-do-flutter)
    2. [Framework](#framework)
    3. [IDE's principais](#ides-principais)
    4. [Ferramentas Online](#ferramentas-online)
    5. [Android Studio](#android-studio)
    6. [Mascote do Flutter](#mascote-do-flutter)
2. [Parte 2 - Widgets](#parte-2---widgets)
    1. [Widget: Container](#widget-container)
    2. [Widget: Stack](#widget-stack)
    3. [Widget: Column](#widget-column)
    4. [Widget: Row](#widget-row)
    5. [Widget: Text](#widget-text)
    6. [Widget: ElevatedButton](#widget-elevatedbutton)
    7. [Widget: Scaffold](#widget-scaffold)
    8. [Widget: ListView](#widget-listview)
    9. [Widget: LinearProgressIndicator](#widget-linearprogressindicator)
    10. [Widget: Padding](#widget-padding)
    11. [Widget: Image](#widget-image)
    12. [Widget: ClipRRect](#widget-cliprrect)
    13. [Widget: AnimatedOpacity](#widget-animatedopacity)
    14. [Widget: SizedBox](#widget-sizedbox)
3. [Parte 3 - Design](#parte-3---design)
    1. [Estilos de design](#estilos-de-design)
    2. [Cores](#cores)
4. [Parte 4 - Estados](#parte-4---estados)
    1. [StatelessWidget](#statelesswidget)
    2. [StatefulWidget](#statefulwidget)
    3. [setState](#setstate)
    4. [Hot Reload e Hot Restart](#hot-reload-e-hot-restart)
5. [Parte 5 - Boas práticas](#parte-5---boas-práticas)
    1. [Assets](#assets)


# Parte 1 - Introdução

    1980 - primeiros celulares no mundo
    2000 - primeiros smartphones
    2008 - criação da Apple Store
    2009 - criação da Play Store (open-source)

242 milhões de smartphones no Brasil (2021)

- Android
    - 2009
    - líder do mercado

- iOS
    - 2008
    - 26,75% do mercado

- Windows Phone
    - 2005-2015

### Propósito do flutter
    - unificação entre os nativos
    - um código para todos
    - linguagem simples (dart)
    - boa documentação
    - multiplataforma:
        - desktop
        - web
        - android
        - ios

### Framework
- ferramenta
- código pronto
- classes já estruturadas
- "canivete suíço"
    - faz de tudo
    - não é muito bom pra uma só atividade

### IDE's principais
- Ambiente de desenvolvimento integrado
- IntelliJ
    - leve
    - generalista
- VSCode
    - leve
    - emulador externo
- XCode
    - macos
    - pesado
    - performático
- Android Studio
    - pesado
    - performático
    - emulador embutido
    - colado com o IntelliJ

### Ferramentas Online
- paliativos
- limitados
    - FlutLab
        - leve
        - pago
    - FlutterFlow
        - leve
        - limitado

### Android Studio
- Pixel 3a
- S (API 31)
- plugins
    - flutter
    - dart

- Project name:     
    - sem maiúsculas
    - sem espaços
    - exemplo: nosso_primeiro_projeto
- Organization:
    - com.example
    - com.mateusauler

### Mascote do Flutter
- Dash
- beija-flor azul

# Parte 2 - Widgets

    - Widgets
        - base do flutter
        - peça de LEGO
        - parâmetros
        - métodos

    - conexão direta
        - pais e filhos
        - árvore
    
    - Arvore de widgets
        - 'flutter inspector'

[docs.flutter.dev/development/ui/widgets/basics](https://docs.flutter.dev/ui/widgets/basics)


### Widget: ListView
- coloca scroll na tela

### Widget: LinearProgressIndicator
- value: 0 a 1
- colocar dentro de Container para limitar

### Widget: Padding
- parâmetro 'padding'
- pede um 'EdgeInsets'
- pede o lado
- pede o valor

### Widget: Image
- 4 tipos básicos:
    - Asset
        - imagem dentro do próprio projeto
    - Network
        - imagem da internet, através de URL
    - File
        - imagem de dentro do sistema de arquivo do dispositivo
    - Memory
        - imagem de um arquivo binário da memória do dispositivo



### Widget: AnimatedOpacity
- animação para 'esconder' widgets
   
### Widget: SizedBox
- menos responsabilidade que o Container
- apenas tamanhos como parâmetro


# Parte 3 - Design

### Estilos de design
    - Material Design
        - padrão visual
        - google
        - cores, formatos, alinhamentos e espaçamentos prontos
        - design adaptável

    - Cupertino
        - apple
        - cores, formatos padronizados
        - funções e animações prontas

### Cores
- Alpha(transparência) [0 - 255]
    - 0: transparente
    - 255: solido
- Red [0 - 255]
- Green [0 - 255]
- Blue [0 - 255]

```dart
Color.fromARGB(255, 24, 117, 232)
```


# Parte 4 - Estados

### StatelessWidget
- widget que pode ficar modelando
- estático
- sem estado
- variável
    - nome

### StatefulWidget
- permite a reconstrução
- variável
    - widget.nome
- ficar de olho quem muda
- se muda tem que reconstruí

### setState((){})
- colocar em quem está mudando
- rescreve a função build()

### Hot Reload e Hot Restart
- Hot Reload
    - leve
    - rápido
    - ja faz quando salva
- Hot Restart
    - recarrega toda a aplicação
    - restart aplicação
    - estados, variáveis volta ao inicio


# Parte 5 - Boas práticas

- boas práticas
    - 1 arquivo para cada responsabilidade
    - classes com nome em inglês

- pegar a tarefa com menos responsabilidade para refatorar antes 

- rename
    - no AndroidStudio
    - shift + F6
    - refatorar todos para um mesmo nome

- classe:  InitialScreen
- arquivo: initial_screen.dart

- transformar de statefull para stateless
    - excluir tudo do primeiro @override até o segundo @override, 
    - deixando apenas um
    - mudar o nome de StatefulWidget para StatelessWidget   

### Assets 
- deixa app mais pesado, do que pegar da web
- pega todas as imagens dentro de assets/images, por causa do último '/'

```dart
- assets:
    - assets/images/
```