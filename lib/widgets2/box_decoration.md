## BoxDecoration

```dart
Container(
  width: 200,
  height: 200,
  decoration: BoxDecoration(
    color: Colors.blue, // Cor de fundo
    borderRadius: BorderRadius.circular(10.0), // Borda arredondada
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0, 2), // Deslocamento da sombra (horizontal, vertical)
        blurRadius: 4.0, // Raio do desfoque da sombra
        spreadRadius: 1.0, // Espalhamento da sombra
      ),
    ],
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.red, Colors.blue], // Gradiente de cores
    ),
  ),
  child: Center(
    child: Text('Contêiner Personalizado'),
  ),
)
```

### Align

    controla a posição de UM widget em seu próprio espaço

### Padding
    adicionar espaço ao redor do filho

### BoxDecoration
    definir aparência

    principais atributos: 
    - color
    - border
    - gradient
    - shadow

### DecorationImage
    definir uma imagem de fundo para um widget

    atributo image:
    - ImageProvider

        - AssetImage: Carrega imagens de ativos locais no seu projeto Flutter.
        - NetworkImage: Carrega imagens de URLs na internet.
        - FileImage: Carrega imagens de arquivos locais no sistema de arquivos do dispositivo.
        - MemoryImage: Carrega imagens diretamente a partir de bytes de imagem em memória.
        - ExactAssetImage: Uma variante de AssetImage que permite especificar o tamanho exato da imagem a ser carregada.
        - ResizeImage: Permite redimensionar imagens antes de carregá-las

    - AssetImage
    - NetworkImage
    - FileImage

### atributo 'fit'
    ajusta a imagem

    - BoxFit.contain
    - BoxFit.cover
    - BoxFit.fill

### atributo 'repeat'
    defini repetição

    - ImageRepeat.repeat
    - ImageRepeat.repeatX
    - ImageRepeat.repeatY

