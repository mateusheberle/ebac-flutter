## Offset

  - classe que representa coordenadas bidimensionais, com valor de ponto flutuante
  - Offset(0.0, 0.0) - cria um Offset com x = 0.0 e y = 0.0, ou seja, NO CENTRO DA TELA

  - Offset _position = const Offset(0.0, 0.0);


### Transform.translate
  aplicar transformação de tradução ao widget filho

    child: Transform.translate(
      offset: _position,
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Arraste-me!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),



### Criando um Offset para representar uma coordenada (x, y)
  Offset minhaCoordenada = Offset(100.0, 50.0);

### Acessando os valores x e y do Offset
  double x = minhaCoordenada.dx; // Valor x (horizontal)
  double y = minhaCoordenada.dy; // Valor y (vertical)

### Usando Offset em widgets
  Container(
    margin: EdgeInsets.only(left: minhaCoordenada.dx, top: minhaCoordenada.dy),
    width: 50.0,
    height: 50.0,
    color: Colors.blue,
  )

