### Widget: Stack
- do inglês: 'pilha'
- empilhar uma coisa encima da outra
- 'children'
    - várias crianças
- o último widget dentro de 'children' aparece por cima da pilha
- 'aligment'
    - AlignmentDirectional.center
    - alinhamento

```dart
Stack(
    children: [
        Container(color: Colors.red),
        Container(color: Colors.blue, width: 100, height: 100,),
    ]
)
```

### Stack: 
    - pilha de componentes um em cima do outro
    - empilhar vários widgets uns sobre os outros
    - usa coordenadas ou posicionamento relativo 

### Positioned: 
    - posicionar filhos 
    - posição em relação ao canto superior esquerdo
    - distâncias em pixels
    - frequentemente usado dentro do stack
